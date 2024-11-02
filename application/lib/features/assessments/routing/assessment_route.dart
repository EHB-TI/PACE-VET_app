part of '../routes.dart';

@TypedGoRoute<AssessmentRoute>(
  path: '/assessments/show/:assessment',
)
class AssessmentRoute extends GoRouteData {
  final int assessment;

  AssessmentRoute(this.assessment);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => AssessmentCubit(
        context.read<PaceVetApi>(),
        assessmentId: assessment,
      ),
      child: const AssessmentScreen(),
    );
  }
}
