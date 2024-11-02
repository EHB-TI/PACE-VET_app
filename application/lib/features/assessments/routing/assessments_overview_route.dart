part of '../routes.dart';

@TypedGoRoute<AssessmentsOverviewRoute>(
  path: '/assessments',
)
class AssessmentsOverviewRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => AssessmentsCubit(
        context.read<AuthBloc>(),
        context.read<PaceVetApi>(),
      ),
      child: const AssessmentsOverviewScreen(),
    );
  }
}
