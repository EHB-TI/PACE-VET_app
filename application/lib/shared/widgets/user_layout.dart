import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/assessments/routes.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet/features/auth/routes.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/features/profile/routes.dart';
import 'package:pace_vet/features/settings/routes.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/responsive_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/// A wrapper layout for authenticated users.
class UserLayout extends StatelessWidget {
  /// Optional widget to render as the appbar.
  final PreferredSizeWidget? appBar;

  /// The child widget to show in the body.
  final Widget? child;

  /// A function that builds the [child] widget if none is passed.
  final Widget Function(BuildContext context, User user)? builder;

  /// Optional widget to show when the application is loading user information.
  final Widget? loading;

  /// Optional widget to show when the application isn't signed in.
  final Widget? guest;

  /// Optional FAB to render.
  final Widget? floatingActionButton;

  final bool renderNavigation;

  const UserLayout({
    super.key,
    this.appBar,
    this.child,
    this.builder,
    this.loading,
    this.guest,
    this.floatingActionButton,
    this.renderNavigation = true,
  });

  factory UserLayout.loading() {
    return const UserLayout(
      renderNavigation: false,
      child: Loading(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // If user is signed in we render the child content
    // If we're loading we display a loading state
    // If we're not signed in we request the user to sign in.
    return BlocConsumer<AuthBloc, AuthState>(
      // Trigger listener when logging out.
      listenWhen: (_, current) => current is AuthNotSignedInState,
      listener: (context, state) => LoginRoute().go(context),
      builder: (context, state) {
        if (state is AuthSignedInState) {
          return _buildContent(context, state);
        } else if (state is AuthLoadingState) {
          return loading ?? const Loading();
        }

        return guest ?? _buildNotSignedIn(context);
      },
    );
  }

  Widget _buildContent(BuildContext context, AuthSignedInState state) {
    return ResponsiveLayout(
      mobile: Scaffold(
        appBar: appBar,
        body: SafeArea(
          child: child ??
              builder?.call(
                context,
                state.user,
              ) ??
              const FlutterLogo(),
        ),
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: _buildNavigation(context, state.user),
      ),
    );
  }

  /// Default widget to show when the user is not signed in.
  Widget _buildNotSignedIn(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You are not signed in!'),
            TextButton(
              onPressed: () {
                LoginRoute().go(context);
              },
              child: const Text('Click here to sign in'),
            ),
          ],
        ),
      ),
    );
  }

  Widget? _buildNavigation(BuildContext context, User user) {
    if (renderNavigation == false) {
      return null;
    }

    final route = GoRouterState.of(context).path;
    final isCandidate = user.hasUserType(UserType.candidate);
    final isAssessor = user.hasUserType(UserType.assessor);

    int currentIndex = 1;
    if (route?.startsWith('/profile') ?? false) {
      currentIndex = 0;
    } else if (route?.startsWith('/assessments') ?? false) {
      currentIndex = isCandidate ? 2 : 1;
    } else if (route?.startsWith('/settings') ?? false) {
      currentIndex = isCandidate ? 3 : 2;
    }

    return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          return ProfileRoute().go(context);
        }

        if (isCandidate) {
          if (index == 1) {
            return PortfolioOverviewRoute().go(context);
          } else if (index == 2) {
            return AssessmentsOverviewRoute().go(context);
          }
        } else if (isAssessor) {
          if (index == 1) {
            AssessmentsOverviewRoute().go(context);
          } else if (index == 2) {
            return SettingsRoute().go(context);
          }
        }

        if (index == 3) {
          return SettingsRoute().go(context);
        }
      },
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.account_circle),
          title: const Text('Profile'),
        ),
        if (isCandidate)
          SalomonBottomBarItem(
            icon: const Icon(Icons.library_books),
            title: const Text('Portfolio'),
          ),
        if (isCandidate || isAssessor)
          SalomonBottomBarItem(
            icon: const Icon(Icons.reviews),
            title: const Text('Assessments'),
          ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
        ),
      ],
    );
  }
}
