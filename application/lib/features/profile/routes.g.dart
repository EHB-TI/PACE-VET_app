// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $profileRoute,
      $editProfileRoute,
    ];

RouteBase get $profileRoute => GoRouteData.$route(
      path: '/profile',
      factory: $ProfileRouteExtension._fromState,
    );

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editProfileRoute => GoRouteData.$route(
      path: '/profile/edit',
      factory: $EditProfileRouteExtension._fromState,
    );

extension $EditProfileRouteExtension on EditProfileRoute {
  static EditProfileRoute _fromState(GoRouterState state) => EditProfileRoute();

  String get location => GoRouteData.$location(
        '/profile/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
