import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

extension BuildContextExtensions on BuildContext {
  /// Reads the currently authenticated user from the [BuildContext] or [null] if none is authenticated.
  User? maybeGetCurrentUser() {
    var state = read<AuthBloc>().state;

    if (state is AuthSignedInState) {
      return state.user;
    }

    return null;
  }

  /// Reads the currently authenticated user from the [BuildContext].
  User getCurrentUser() {
    final user = maybeGetCurrentUser();
    if (user != null) {
      return user;
    }

    throw AssertionError('Cannot read authenticated user if none is signed in');
  }

  /// Checks if the authenticated user has the given [UserType].
  /// If no user is authenticated, returns `false`.
  bool userHasType(UserType type) {
    final user = maybeGetCurrentUser();
    if (user != null) {
      return user.hasUserType(type);
    }

    return false;
  }
}
