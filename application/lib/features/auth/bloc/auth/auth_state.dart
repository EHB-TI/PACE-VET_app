part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {
  final ValidationMap validation;
  final ErrorMessage message;

  const AuthState(this.validation, this.message);

  @override
  List<Object?> get props => [validation, message];
}

/// Application is loading authentication data
final class AuthLoadingState extends AuthState {
  const AuthLoadingState() : super(ValidationMap.empty, ErrorMessage.empty);
}

/// State when no user is signed in.
final class AuthNotSignedInState extends AuthState {
  const AuthNotSignedInState(super.validation, super.message);
}

/// State when a user is signed in.
final class AuthSignedInState extends AuthState {
  /// The currently signed in user.
  final User user;

  const AuthSignedInState(this.user)
      : super(ValidationMap.empty, ErrorMessage.empty);

  @override
  List<Object?> get props => [user];
}

/// State when the user should provide 2FA authentication.
final class AuthRequires2faState extends AuthState {
  const AuthRequires2faState(super.validation, super.message);
}

final class AuthFailed2faState extends AuthRequires2faState {
  const AuthFailed2faState(super.validation, super.message);
}

/// State when a sign in attempt failed.
final class AuthSignInFailedState extends AuthNotSignedInState {
  const AuthSignInFailedState(super.validation, super.message);
}
