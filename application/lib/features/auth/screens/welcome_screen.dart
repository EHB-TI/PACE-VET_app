import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/routes.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/responsive_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthNotSignedInState) {
            return _buildWelcomeScreen(context);
          }

          return const Loading();
        },
      ),
    );
  }

  Widget _buildWelcomeScreen(BuildContext context) {
    return ResponsiveLayout(
      tablet: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildContent(context),
          ),
        ),
      ),
      mobile: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.elliptical(450, 150),
              ),
              child: PageView(
                children: const [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/unsplash-pace-vet.jpg'),
                      ),
                    ),
                    child: SizedBox.expand(),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/unsplash-creative.jpg'),
                      ),
                    ),
                    child: SizedBox.expand(),
                  ),
                ],
              ),
            ),
          ),
          ..._buildContent(context),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'PACE-VET app',
              style: TextStyle(
                fontSize: 26.0,
                height: 1.5,
                color: Color.fromRGBO(33, 45, 82, 1),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
                'With PACE-VET, you can collect, manage, and transfer your certificates with ease. Let\'s begin your journey towards making your skills visible and recognized throughout your career.'),
            const SizedBox(
              height: 15.0,
            ),
            FilledButton(
              child: const Text("Get Started"),
              onPressed: () => RegisterRoute().push(context),
            )
          ],
        ),
      ),
      Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            const Text(
              "Already have an account?",
            ),
            TextButton(
              onPressed: () => LoginRoute().push(context),
              child: const Text(
                "Log In",
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
