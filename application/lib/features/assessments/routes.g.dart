// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $assessmentsOverviewRoute,
      $assessmentRoute,
      $createAssessmentRoute,
      $previewCompetenceRoute,
      $reviewRoute,
    ];

RouteBase get $assessmentsOverviewRoute => GoRouteData.$route(
      path: '/assessments',
      factory: $AssessmentsOverviewRouteExtension._fromState,
    );

extension $AssessmentsOverviewRouteExtension on AssessmentsOverviewRoute {
  static AssessmentsOverviewRoute _fromState(GoRouterState state) =>
      AssessmentsOverviewRoute();

  String get location => GoRouteData.$location(
        '/assessments',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $assessmentRoute => GoRouteData.$route(
      path: '/assessments/show/:assessment',
      factory: $AssessmentRouteExtension._fromState,
    );

extension $AssessmentRouteExtension on AssessmentRoute {
  static AssessmentRoute _fromState(GoRouterState state) => AssessmentRoute(
        int.parse(state.pathParameters['assessment']!),
      );

  String get location => GoRouteData.$location(
        '/assessments/show/${Uri.encodeComponent(assessment.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createAssessmentRoute => GoRouteData.$route(
      path: '/assessments/create',
      factory: $CreateAssessmentRouteExtension._fromState,
    );

extension $CreateAssessmentRouteExtension on CreateAssessmentRoute {
  static CreateAssessmentRoute _fromState(GoRouterState state) =>
      CreateAssessmentRoute();

  String get location => GoRouteData.$location(
        '/assessments/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $previewCompetenceRoute => GoRouteData.$route(
      path: '/assessments/preview/:competence',
      factory: $PreviewCompetenceRouteExtension._fromState,
    );

extension $PreviewCompetenceRouteExtension on PreviewCompetenceRoute {
  static PreviewCompetenceRoute _fromState(GoRouterState state) =>
      PreviewCompetenceRoute(
        competence: state.pathParameters['competence']!,
      );

  String get location => GoRouteData.$location(
        '/assessments/preview/${Uri.encodeComponent(competence)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $reviewRoute => GoRouteData.$route(
      path: '/assessments/:assessment/:review',
      factory: $ReviewRouteExtension._fromState,
    );

extension $ReviewRouteExtension on ReviewRoute {
  static ReviewRoute _fromState(GoRouterState state) => ReviewRoute(
        assessment: int.parse(state.pathParameters['assessment']!),
        review: int.parse(state.pathParameters['review']!),
      );

  String get location => GoRouteData.$location(
        '/assessments/${Uri.encodeComponent(assessment.toString())}/${Uri.encodeComponent(review.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
