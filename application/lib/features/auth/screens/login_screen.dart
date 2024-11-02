import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/routes.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/frosted_glass.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/password_field.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _form = GlobalKey();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/unsplash-creative.jpg'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (previous, current) //=> false,
                  =>
                  current is AuthRequires2faState,
              listener: (context, state) //{
                  // context.go('/portfolio');
                  //  PortfolioOverviewRoute().go(context);
                  //  },
                  =>
                  TwoFactorAuthenticationRoute().go(context),
              builder: (context, state) {
                if (state is AuthLoadingState) {
                  return const Loading();
                }

                return _buildLoginForm(context, state);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, AuthState state) {
    return Form(
      key: _form,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: FrostedGlass(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _username,
                      validator: buildValidator([isRequired]),
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      decoration: InputDecoration(
                        hintText: 'Email',
                        errorText: state.validation['/username'],
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    PasswordField(
                      controller: _password,
                      validator: buildValidator([isRequired]),
                      errorText: state.validation['/password'],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => RegisterRoute().go(context),
                          child: Text(
                            'Don\'t have an account?',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ],
                    ),
                    if (state.message.exception != null)
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 12.0,
                        ),
                        child: Text(
                          state.message.message ?? '',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      ),
                    FilledButton.tonal(
                      onPressed: () {
                        if (_form.currentState?.validate() ?? false) {
                          context.read<AuthBloc>().add(
                                AuthSignInEvent(
                                  username: _username.text,
                                  password: _password.text,
                                ),
                              );
                        }
                      },
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
