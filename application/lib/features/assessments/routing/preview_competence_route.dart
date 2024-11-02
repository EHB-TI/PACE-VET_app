part of '../routes.dart';

@TypedGoRoute<PreviewCompetenceRoute>(
  path: '/assessments/preview/:competence',
)
class PreviewCompetenceRoute extends GoRouteData {
  final String competence;

  const PreviewCompetenceRoute({required this.competence});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => PortfolioCubit(
        context.read<PaceVetApi>(),
        competenceKey: competence,
      ),
      child: const PortfolioOverviewScreen(
        showCreateButton: false,
        showBackButton: true,
      ),
    );
  }
}
