import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> with ContextualLogger {
  final PaceVetApi _api;

  RegistrationCubit(this._api) : super(const RegistrationInitialState());

  Future register(
      UserType type,
      String firstName,
      String familyName,
      String email,
      String address,
      DateTime dateofBirth,
      String password,
      String totp,
      String verification,
      bool publicProfile) async {
    emit(const RegistrationLoadingState());

    final request = RegisterRequestBuilder()
      ..name = firstName
      ..familyName = familyName
      ..email = email
      ..address = address
      ..dateOfBirth = dateofBirth.toDate()
      ..password = password
      ..totp = totp
      ..verification = verification
      ..publicProfile = publicProfile;

    request.types.add(type);
    try {
      final response =
          await _api.getAuthApi().paceVetWebApiV1AccountsControllerRegister(
                registerRequest: request.build(),
              );

      return emit(RegistrationSuccessState(user: response.data!));
    } catch (error, stackTrace) {
      log.e(
        'An error occured while registering user',
        error: error,
        stackTrace: stackTrace,
      );

      final validation = ValidationMap.fromError(error);
      emit(RegistrationFailedState(validation));
    }
  }
}
