// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $portfolioOverviewRoute,
      $experienceRoute,
      $attachmentRoute,
      $editAttachmentRoute,
      $editExperienceRoute,
      $createExperienceRoute,
      $createAttachmentRoute,
    ];

RouteBase get $portfolioOverviewRoute => GoRouteData.$route(
      path: '/portfolio',
      factory: $PortfolioOverviewRouteExtension._fromState,
    );

extension $PortfolioOverviewRouteExtension on PortfolioOverviewRoute {
  static PortfolioOverviewRoute _fromState(GoRouterState state) =>
      PortfolioOverviewRoute();

  String get location => GoRouteData.$location(
        '/portfolio',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $experienceRoute => GoRouteData.$route(
      path: '/portfolio/show/:id',
      factory: $ExperienceRouteExtension._fromState,
    );

extension $ExperienceRouteExtension on ExperienceRoute {
  static ExperienceRoute _fromState(GoRouterState state) => ExperienceRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/portfolio/show/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $attachmentRoute => GoRouteData.$route(
      path: '/portfolio/show/:experienceId/:attachmentId',
      factory: $AttachmentRouteExtension._fromState,
    );

extension $AttachmentRouteExtension on AttachmentRoute {
  static AttachmentRoute _fromState(GoRouterState state) => AttachmentRoute(
        experienceId: int.parse(state.pathParameters['experienceId']!),
        attachmentId: int.parse(state.pathParameters['attachmentId']!),
      );

  String get location => GoRouteData.$location(
        '/portfolio/show/${Uri.encodeComponent(experienceId.toString())}/${Uri.encodeComponent(attachmentId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editAttachmentRoute => GoRouteData.$route(
      path: '/portfolio/edit/:experienceId/:attachmentId/edit',
      factory: $EditAttachmentRouteExtension._fromState,
    );

extension $EditAttachmentRouteExtension on EditAttachmentRoute {
  static EditAttachmentRoute _fromState(GoRouterState state) =>
      EditAttachmentRoute(
        experienceId: state.pathParameters['experienceId']!,
        attachmentId: state.pathParameters['attachmentId']!,
      );

  String get location => GoRouteData.$location(
        '/portfolio/edit/${Uri.encodeComponent(experienceId)}/${Uri.encodeComponent(attachmentId)}/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editExperienceRoute => GoRouteData.$route(
      path: '/portfolio/edit/:id',
      factory: $EditExperienceRouteExtension._fromState,
    );

extension $EditExperienceRouteExtension on EditExperienceRoute {
  static EditExperienceRoute _fromState(GoRouterState state) =>
      EditExperienceRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/portfolio/edit/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createExperienceRoute => GoRouteData.$route(
      path: '/portfolio/create',
      factory: $CreateExperienceRouteExtension._fromState,
    );

extension $CreateExperienceRouteExtension on CreateExperienceRoute {
  static CreateExperienceRoute _fromState(GoRouterState state) =>
      CreateExperienceRoute();

  String get location => GoRouteData.$location(
        '/portfolio/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createAttachmentRoute => GoRouteData.$route(
      path: '/portfolio/create/:experienceId',
      factory: $CreateAttachmentRouteExtension._fromState,
    );

extension $CreateAttachmentRouteExtension on CreateAttachmentRoute {
  static CreateAttachmentRoute _fromState(GoRouterState state) =>
      CreateAttachmentRoute(
        experienceId: int.parse(state.pathParameters['experienceId']!),
      );

  String get location => GoRouteData.$location(
        '/portfolio/create/${Uri.encodeComponent(experienceId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
