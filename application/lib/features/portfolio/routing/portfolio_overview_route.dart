part of '../routes.dart';

@TypedGoRoute<PortfolioOverviewRoute>(
  path: '/portfolio',
)
class PortfolioOverviewRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => PortfolioCubit(context.read<PaceVetApi>()),
      child: const PortfolioOverviewScreen(),
    );
  }
}
