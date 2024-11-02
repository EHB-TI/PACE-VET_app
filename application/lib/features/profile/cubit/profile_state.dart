part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {
  final ValidationMap validation;

  const ProfileState({required this.validation});
}

final class ProfileInitialState extends ProfileState {
  final User user;

  const ProfileInitialState({required this.user})
      : super(validation: ValidationMap.empty);
}

final class ProfileLoadingState extends ProfileState {
  const ProfileLoadingState() : super(validation: ValidationMap.empty);
}

final class ProfileFailedToUpdateState extends ProfileState {
  final User user;
  final ErrorMessage error;

  const ProfileFailedToUpdateState({
    required this.user,
    required this.error,
    required super.validation,
  });
}

final class ProfileUpdatedState extends ProfileState {
  const ProfileUpdatedState() : super(validation: ValidationMap.empty);
}
