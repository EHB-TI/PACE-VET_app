part of '../routes.dart';

@TypedGoRoute<ExperienceRoute>(
  path: '/portfolio/show/:id',
)
class ExperienceRoute extends GoRouteData {
  final int id;

  ExperienceRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ExperienceCubit(id, context.read<PaceVetApi>()),
      child: const ExperienceScreen(),
    );
  }
}
