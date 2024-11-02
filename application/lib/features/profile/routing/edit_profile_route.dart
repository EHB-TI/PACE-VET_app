part of '../routes.dart';

@TypedGoRoute<EditProfileRoute>(
  path: '/profile/edit',
)
class EditProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        api: context.read<PaceVetApi>(),
        user: context.getCurrentUser(),
      ),
      child: const EditProfileScreen(),
    );
  }
}
