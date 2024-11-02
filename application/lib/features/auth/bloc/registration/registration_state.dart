part of 'registration_cubit.dart';

@immutable
sealed class RegistrationState extends Equatable {
  final ValidationMap validation;

  const RegistrationState(this.validation);

  @override
  List<Object?> get props => [validation];
}

final class RegistrationInitialState extends RegistrationState {
  const RegistrationInitialState() : super(ValidationMap.empty);
}

final class RegistrationLoadingState extends RegistrationState {
  const RegistrationLoadingState() : super(ValidationMap.empty);
}

final class RegistrationSuccessState extends RegistrationState {
  final User user;

  const RegistrationSuccessState({
    required this.user,
  }) : super(ValidationMap.empty);
}

final class RegistrationFailedState extends RegistrationState {
  const RegistrationFailedState(super.validation);
}
