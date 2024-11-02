// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $authShellRoute,
    ];

RouteBase get $authShellRoute => ShellRouteData.$route(
      factory: $AuthShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/welcome',
          name: 'auth.welcome',
          factory: $WelcomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/auth/login',
          name: 'auth.login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/auth/register',
          name: 'auth.register',
          factory: $RegisterRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/auth/2fa',
          name: 'auth.2fa',
          factory: $TwoFactorAuthenticationRouteExtension._fromState,
        ),
      ],
    );

extension $AuthShellRouteExtension on AuthShellRoute {
  static AuthShellRoute _fromState(GoRouterState state) => AuthShellRoute();
}

extension $WelcomeRouteExtension on WelcomeRoute {
  static WelcomeRoute _fromState(GoRouterState state) => WelcomeRoute();

  String get location => GoRouteData.$location(
        '/welcome',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location(
        '/auth/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => RegisterRoute();

  String get location => GoRouteData.$location(
        '/auth/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TwoFactorAuthenticationRouteExtension
    on TwoFactorAuthenticationRoute {
  static TwoFactorAuthenticationRoute _fromState(GoRouterState state) =>
      TwoFactorAuthenticationRoute();

  String get location => GoRouteData.$location(
        '/auth/2fa',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
