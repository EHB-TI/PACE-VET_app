part of '../routes.dart';

@TypedGoRoute<ProfileRoute>(
  path: '/profile',
)
class ProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}
