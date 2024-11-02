part of '../routes.dart';

@TypedGoRoute<CreateExperienceRoute>(
  path: '/portfolio/create',
)
class CreateExperienceRoute extends GoRouteData {
  CreateExperienceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ExperienceCubit(null, context.read<PaceVetApi>()),
      child: const CreateExperienceScreen(),
    );
  }
}
