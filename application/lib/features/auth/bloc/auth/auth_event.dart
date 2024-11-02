part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

/// Triggers a signin attempt.
class AuthSignInEvent extends AuthEvent {
  final String username;
  final String password;

  AuthSignInEvent({
    required this.username,
    required this.password,
  });
}

class AuthSignOutEvent extends AuthEvent {
  //
}

class Auth2FactorEvent extends AuthEvent {
  final String code;

  Auth2FactorEvent({required this.code});
}

/// Requests the user information to be reloaded.
class AuthLoadUserEvent extends AuthEvent {
  //
}

class AuthDeleteUserEvent extends AuthEvent {
  //
}
