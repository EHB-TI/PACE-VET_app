import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';

class RedirectIfAuth extends StatelessWidget {
  final Widget child;

  const RedirectIfAuth({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => current is AuthSignedInState,
      listener: (context, state) => _clearStackAndNavigate(context, '/'),
      child: child,
    );
  }

  /// Clears the navigation stack (so the user can't go back to login)
  /// And then navigates to the given URL.
  void _clearStackAndNavigate(BuildContext context, String url) {
    while (context.canPop()) {
      context.pop();
    }

    context.go(url);
  }
}
