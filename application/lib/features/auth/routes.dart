import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/auth/bloc/registration/registration_cubit.dart';
import 'package:pace_vet/features/auth/screens/login_screen.dart';
import 'package:pace_vet/features/auth/screens/register_screen.dart';
import 'package:pace_vet/features/auth/screens/two_factor_authentication_screen.dart';
import 'package:pace_vet/features/auth/screens/welcome_screen.dart';
import 'package:pace_vet/features/auth/widgets/redirect_if_auth.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'routes.g.dart';
part 'routing/login_route.dart';
part 'routing/register_route.dart';
part 'routing/welcome_route.dart';
part 'routing/two_factor_authentication_route.dart';

@TypedShellRoute<AuthShellRoute>(
  routes: [
    TypedGoRoute<WelcomeRoute>(path: '/welcome', name: 'auth.welcome'),
    TypedGoRoute<LoginRoute>(path: '/auth/login', name: 'auth.login'),
    TypedGoRoute<RegisterRoute>(path: '/auth/register', name: 'auth.register'),
    TypedGoRoute<TwoFactorAuthenticationRoute>(
      path: '/auth/2fa',
      name: 'auth.2fa',
    ),
  ],
)
class AuthShellRoute extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RedirectIfAuth(child: navigator);
  }
}
