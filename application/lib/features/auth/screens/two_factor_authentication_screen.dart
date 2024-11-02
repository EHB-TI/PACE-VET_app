import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/frosted_glass.dart';
import 'package:pace_vet/shared/widgets/loading.dart';

class TwoFactorAuthenticationScreen extends StatefulWidget {
  const TwoFactorAuthenticationScreen({super.key});

  @override
  State<TwoFactorAuthenticationScreen> createState() =>
      _TwoFactorAuthenticationScreenState();
}

class _TwoFactorAuthenticationScreenState
    extends State<TwoFactorAuthenticationScreen> {
  final _totp = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/unsplash-creative.jpg'),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (previous, current) => current is AuthSignedInState,
              listener: (context, state) => context.go('/'),
              builder: (context, state) {
                if (state is AuthLoadingState) {
                  return const Loading();
                }

                return _buildTwoFactorForm(context);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTwoFactorForm(BuildContext context) {
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
                      validator: buildValidator([isRequired, maxLength(6)]),
                      controller: _totp,
                      maxLength: 6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType
                          .number, // Numeric input for the 2FA code
                      textInputAction: TextInputAction.done,
                      autofillHints: [AutofillHints.oneTimeCode],
                      decoration:
                          const InputDecoration(labelText: 'Verificaton code'),
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        if (_form.currentState?.validate() ?? false) {
                          // context.read<AuthBloc>().add(Auth2FactorEvent(
                          //  code: "000000")); // Simulate a correct MFA code
                          context
                              .read<AuthBloc>()
                              .add(Auth2FactorEvent(code: _totp.text));
                        }
                      },
                      child: Text('enter MFA'),
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
