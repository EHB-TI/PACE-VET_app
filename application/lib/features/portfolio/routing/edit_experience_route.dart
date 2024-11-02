part of '../routes.dart';

@TypedGoRoute<EditExperienceRoute>(
  path: '/portfolio/edit/:id',
)
class EditExperienceRoute extends GoRouteData {
  final int id;

  EditExperienceRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ExperienceCubit(id, context.read<PaceVetApi>()),
      child: const EditExperienceScreen(),
    );
  }
}
