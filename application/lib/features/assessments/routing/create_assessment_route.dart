part of '../routes.dart';

@TypedGoRoute<CreateAssessmentRoute>(
  path: '/assessments/create',
)
class CreateAssessmentRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => AssessmentCubit(
        context.read<PaceVetApi>(),
      ),
      child: const CreateAssessmentScreen(),
    );
  }
}
