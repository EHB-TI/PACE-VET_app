import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/shared/models/error_message.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> with ContextualLogger {
  final PaceVetApi api;

  ProfileCubit({
    required this.api,
    required User user,
  }) : super(ProfileInitialState(user: user));

  Future save(
    User user,
    String? firstName,
    String? lastName,
    String? email,
    Date? birthDate,
    String? address,
  ) async {
    try {
      emit(const ProfileLoadingState());

      final request = UpdateUserRequestBuilder()
        ..name = firstName
        ..familyName = lastName
        ..email = email
        ..dateOfBirth = birthDate
        ..address = address
        ..publicProfile = user.publicProfile;

      await api.getAuthApi().paceVetWebApiV1AccountsControllerUpdateUser(
            updateUserRequest: request.build(),
          );

      emit(const ProfileUpdatedState());
    } catch (error, stackTrace) {
      log.e(
        'An error occured while attempting to update user',
        error: error,
        stackTrace: stackTrace,
      );

      emit(ProfileFailedToUpdateState(
        user: user,
        validation: ValidationMap.fromError(error),
        error: ErrorMessage.fromThrown(error),
      ));
    }
  }
}
