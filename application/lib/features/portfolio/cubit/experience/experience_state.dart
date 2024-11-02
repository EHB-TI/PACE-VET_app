part of 'experience_cubit.dart';

@immutable
sealed class ExperienceState extends Equatable {
  final ValidationMap validation;
  final ErrorMessage error;

  const ExperienceState(this.validation, this.error);

  @override
  List<Object?> get props => [validation, error];
}

final class ExperienceLoadingState extends ExperienceState {
  const ExperienceLoadingState()
      : super(ValidationMap.empty, ErrorMessage.empty);
}

final class NoExperienceState extends ExperienceState {
  const NoExperienceState(super.validation, super.error);
}

final class ExperienceLoadedState extends ExperienceState {
  final Experience experience;

  const ExperienceLoadedState({
    required this.experience,
    ValidationMap? validation,
    ErrorMessage? error,
  }) : super(validation ?? ValidationMap.empty, error ?? ErrorMessage.empty);

  @override
  List<Object?> get props => [experience, validation, error];
}

final class ExperienceFailedToLoadState extends ExperienceState {
  const ExperienceFailedToLoadState(super.validation, super.error);
}

final class ExperienceUpdatedState extends ExperienceLoadedState {
  const ExperienceUpdatedState({required super.experience});
}

final class ExperienceFailedToUpdateState extends ExperienceLoadedState {
  const ExperienceFailedToUpdateState({
    required super.experience,
    required super.validation,
    required super.error,
  });
}

final class ExperienceCreatedState extends ExperienceLoadedState {
  const ExperienceCreatedState({required super.experience});
}

final class ExperienceFailedToCreateState extends NoExperienceState {
  const ExperienceFailedToCreateState(super.validation, super.error);
}

final class ExperienceRemovedState extends NoExperienceState {
  const ExperienceRemovedState(super.validation, super.error);
}
