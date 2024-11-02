import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/features/auth/exceptions/sign_in_failed_exception.dart';
import 'package:pace_vet/shared/models/error_message.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'auth_event.dart';
part 'auth_state.dart';

const String _accessKey = '241923b2-f1a9-4f1d-9135-b8ebba8d42f1';
const String _refreshKey = 'bd6eba75-79de-4974-8bdf-b052a979b5e0';

class AuthBloc extends Bloc<AuthEvent, AuthState> with ContextualLogger {
  final PaceVetApi _api;
  final _storage = const FlutterSecureStorage();

  AuthBloc(this._api) : super(const AuthLoadingState()) {
    on<AuthSignInEvent>(signIn);
    on<AuthSignOutEvent>(signOut);
    on<Auth2FactorEvent>(twoFactor);
    on<AuthLoadUserEvent>(loadUser);
    on<AuthDeleteUserEvent>(deleteUser); // Added deleteUser event handler
    _loadKeysFromStorage();
  }

  Future _loadKeysFromStorage() async {
    final access = await _storage.read(key: _accessKey);
    final refresh = await _storage.read(key: _refreshKey);

    log.d('Checking for existing tokens...');
    if (refresh != null) {
      _api.setBearerAuth('refresh', refresh);
    }
    if (access != null) {
      _api.setBearerAuth('api', access);
      add(AuthLoadUserEvent());
    } else {
      add(AuthSignOutEvent());
    }
  }

  Future signIn(AuthSignInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    try {
      final builder = LoginRequestBuilder()
        ..username = event.username
        ..password = event.password;

      final response =
          await _api.getAuthApi().paceVetWebApiV1AccountsControllerLogin(
                loginRequest: builder.build(),
              );

      final token = response.data?.token;
      if (token != null) {
        _api.setBearerAuth('mfa', token);

        return emit(const AuthRequires2faState(
          ValidationMap.empty,
          ErrorMessage.empty,
        ));
      }

      throw const SignInFailedException();
    } catch (error, stackTrace) {
      log.e(
        'An error occured while attempting to sign in ${event.username}',
        error: error,
        stackTrace: stackTrace,
      );

      emit(AuthSignInFailedState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
      ));
    }
  }

  Future signOut(AuthSignOutEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    try {
      await _storage.delete(key: _accessKey);
      await _storage.delete(key: _refreshKey);
    } finally {
      emit(const AuthNotSignedInState(ValidationMap.empty, ErrorMessage.empty));
    }
  }

  Future twoFactor(Auth2FactorEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    final builder = MfaRequestBuilder()..totp = event.code;

    try {
      final response = await _api
          .getAuthApi()
          .paceVetWebApiV1AccountsControllerMfa(mfaRequest: builder.build());

      _storage.write(key: _accessKey, value: response.data?.access?.token);
      _storage.write(key: _refreshKey, value: response.data?.refresh?.token);
      _api.setBearerAuth('api', response.data?.access?.token ?? '');
      _api.setBearerAuth('refresh', response.data?.refresh?.token ?? '');
      add(AuthLoadUserEvent());
    } catch (error, stackTrace) {
      log.e(
        'An error occured completing 2FA challenge',
        error: error,
        stackTrace: stackTrace,
      );

      emit(AuthFailed2faState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
      ));
    }
  }

  Future loadUser(AuthLoadUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    try {
      log.i('Fetching user information from API');
      final response =
          await _api.getAuthApi().paceVetWebApiV1AccountsControllerGetUser();

      final user = response.data;
      if (user != null) {
        return emit(AuthSignedInState(user));
      }

      throw const SignInFailedException();
    } catch (error, stackTrace) {
      log.e(
        'An error occured loading the user from API',
        error: error,
        stackTrace: stackTrace,
      );

      if (error is DioException && error.response?.statusCode == 401) {
        return add(AuthSignOutEvent());
      }

      emit(AuthSignInFailedState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
      ));
    }
  }

  Future deleteUser(AuthDeleteUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    try {
      final accessToken = await _storage.read(key: _accessKey);

      if (accessToken == null) {
        log.e('Access token not found. User might not be logged in.');
        emit(const AuthSignInFailedState(
          ValidationMap.empty,
          ErrorMessage.empty,
        ));
        return;
      }

      log.i('Attempting to delete the user account.');
      final response =
          await _api.getAuthApi().paceVetWebApiV1AccountsControllerDeleteUser(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        log.i('User account successfully deleted.');

        // After successful deletion, also sign the user out
        await signOut(AuthSignOutEvent(), emit);
      } else {
        log.e(
            'Failed to delete user. Status Code: ${response.statusCode}, Message: ${response.statusMessage}');
        emit(AuthSignInFailedState(
          ValidationMap.empty,
          ErrorMessage.empty,
        ));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occurred while deleting the user account',
        error: error,
        stackTrace: stackTrace,
      );

      emit(AuthSignInFailedState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
      ));
    }
  }
}
