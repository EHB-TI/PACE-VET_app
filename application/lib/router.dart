import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/auth/extensions/build_context_extensions.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet/features/auth/routes.dart' as auth;
import 'package:pace_vet/features/portfolio/routes.dart' as portfolio;
import 'package:pace_vet/features/profile/routes.dart' as profile;
import 'package:pace_vet/features/assessments/routes.dart' as assessments;
import 'package:pace_vet/features/settings/routes.dart' as settings;
import 'package:pace_vet_api/pace_vet_api.dart';

/// The application router
final router = GoRouter(
  initialLocation: '/welcome',
  routes: [
    ...auth.$appRoutes,
    ...portfolio.$appRoutes,
    ...profile.$appRoutes,
    ...assessments.$appRoutes,
    ...settings.$appRoutes,
    GoRoute(
      path: '/',
      redirect: (context, state) {
        if (context.getCurrentUser().hasUserType(UserType.candidate)) {
          return portfolio.PortfolioOverviewRoute().location;
        }

        return assessments.AssessmentsOverviewRoute().location;
      },
    ),
  ],
);
