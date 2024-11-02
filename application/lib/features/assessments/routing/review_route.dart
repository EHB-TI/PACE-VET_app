part of '../routes.dart';

@TypedGoRoute<ReviewRoute>(
  path: '/assessments/:assessment/:review',
)
class ReviewRoute extends GoRouteData {
  final int assessment;
  final int review;

  ReviewRoute({required this.assessment, required this.review});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => ReviewCubit(
        context.read<PaceVetApi>(),
        assessment: assessment,
        reviewId: review,
      ),
      child: const ReviewScreen(),
    );
  }
}
