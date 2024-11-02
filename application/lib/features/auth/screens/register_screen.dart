import 'dart:math';
import 'dart:typed_data';

import 'package:base32/base32.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/registration/registration_cubit.dart';
import 'package:pace_vet/features/auth/routes.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/date_form_field.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/password_field.dart';
import 'package:pace_vet_api/pace_vet_api.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:convert';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showForm = true;
  late Uint8List _secret;
  final GlobalKey<FormState> _form = GlobalKey();
  UserType? _type;
  DateTime? _birthDate = DateTime(1980, 1, 1);
  bool _public = false;
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordConfirmation = TextEditingController();
  final TextEditingController _verification = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Generate a 20-byte secret
    _secret = Uint8List(20);
    for (var i = 0; i < _secret.length; i++) {
      _secret[i] = Random.secure().nextInt(256);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationCubit, RegistrationState>(
      listenWhen: (previous, current) => current is RegistrationSuccessState,
      listener: (context, state) {
        if (state is RegistrationSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Your account was created'),
          ));
          LoginRoute().go(context);
        }
      },
      builder: (context, state) {
        if (state is RegistrationLoadingState) {
          return const Scaffold(
            body: Loading(),
          );
        }

        // Log validation errors if registration fails
        if (state is RegistrationFailedState && state.validation != null) {
          print('Registration failed with validation errors:');
          // print('Serialized ValidationMap: ${jsonEncode(state.validation)}');
          if (state.validation is Map) {
            (state.validation as Map).forEach((key, value) {
              print('Validation error on $key: $value');
            });
          } else {
            print('ValidationMap details: ${state.validation}');
            print('ValidationMap properties: ${state.validation.toString()}');
          }
        }

        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 12.0,
                  right: 12.0,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                  ),
                  child: _showForm
                      ? _buildForm(context, state.validation)
                      : _buildConfirmation(context, state),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildForm(BuildContext context, ValidationMap validation) {
    return Form(
      key: _form,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create a new account',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12.0),
            DropdownButtonFormField(
              value: _type,
              validator: buildValidator([isRequired]),
              items: UserType.values
                  .map(
                    (type) => DropdownMenuItem(
                      value: type,
                      child: Text(type.name),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() => _type = value),
              decoration: const InputDecoration(
                labelText: 'Account type',
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _firstName,
              autofillHints: const [
                AutofillHints.name,
                AutofillHints.middleName
              ],
              validator: buildValidator([isRequired]),
              decoration: InputDecoration(
                labelText: 'First name',
                errorText: validation['/name'],
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _lastName,
              autofillHints: const [
                AutofillHints.name,
                AutofillHints.familyName
              ],
              validator: buildValidator([isRequired]),
              decoration: InputDecoration(
                labelText: 'Family name',
                errorText: validation['/family_name'],
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              validator: buildValidator([isRequired, validEmail]),
              decoration: InputDecoration(
                labelText: 'Email address',
                errorText: validation['/email'],
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _address,
              autofillHints: const [AutofillHints.fullStreetAddress],
              validator: buildValidator([isRequired]),
              decoration: InputDecoration(
                labelText: 'Address',
                errorText: validation['/address'],
              ),
            ),
            const SizedBox(height: 12.0),
            DateFormField(
              value: _birthDate ?? DateTime(1980, 1, 1),
              decoration: InputDecoration(
                labelText: 'Date of birth',
                errorText: validation['/date_of_birth'],
                suffixIcon: const Icon(Icons.date_range),
              ),
              onChange: (value) => setState(() => _birthDate = value),
            ),
            const SizedBox(height: 12.0),
            PasswordField(
              controller: _password,
              hintText: 'Password',
              validator: buildValidator([isRequired, validPassword]),
            ),
            const SizedBox(height: 12.0),
            PasswordField(
              controller: _passwordConfirmation,
              hintText: 'Password Confirmation',
              validator: buildValidator([
                isRequired,
                validPassword,
                validPasswordConfirmation(
                  () => _passwordConfirmation.text,
                )
              ]),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Make this a public profile?'),
                Checkbox.adaptive(
                  value: _public,
                  onChanged: (value) =>
                      setState(() => _public = value ?? false),
                ),
              ],
            ),
            const SizedBox(height: 48.0),
            TextButton(
              onPressed: () {
                if (_form.currentState?.validate() ?? false) {
                  setState(() => _showForm = false);
                }
              },
              child: const Text('next'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConfirmation(BuildContext context, RegistrationState state) {
    // Generate the Base32 encoded secret
    final secretEncoded = base32.encode(_secret);

    return Form(
      key: _form,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                // Define what happens when the QR code is tapped
                final url = 'otpauth://totp/PACE-VET?secret=$secretEncoded';

                if (await canLaunch(url)) {
                  await launch(url, forceSafariVC: false, forceWebView: false);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Could not open the 2FA app")),
                  );
                }
              },
              child: PrettyQrView.data(
                data: 'otpauth://totp/PACE-VET?secret=$secretEncoded',
              ),
            ),
            const SizedBox(height: 12.0),

            // Instructions for manually entering the secret key
            Text(
              'If you cannot scan the QR code, you can manually enter the following key into your authenticator app:',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12.0),

            // Display the Base32 encoded secret for the user to copy
            SelectableText(
              secretEncoded,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12.0),

            // Continue with other registration form fields
            Text(
              'Tap the QR code to open your 2FA app or scan the code',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _verification,
              maxLength: 6,
              validator: buildValidator([isRequired, maxLength(6)]),
              keyboardType:
                  TextInputType.number, // Set the keyboard to numeric input
              textInputAction:
                  TextInputAction.done, // Set the appropriate input action
              autofillHints: [
                AutofillHints.oneTimeCode
              ], // Hint that this is for a one-time code
              decoration: InputDecoration(
                labelText: 'Verification code',
                errorText: state.validation['/verification'] ??
                    state.validation['/totp'],
              ),
            ),
            const SizedBox(height: 24.0),
            if (state is RegistrationFailedState)
              Text(
                'One or more errors prevented your account from being created, check this page and the previous page for errors',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.red,
                    ),
              ),
            const SizedBox(height: 24.0),
            TextButton(
              onPressed: () => setState(() => _showForm = true),
              child: const Text('Back'),
            ),
            TextButton(
              onPressed: () {
                if (_form.currentState?.validate() ?? false) {
                  context.read<RegistrationCubit>().register(
                        UserType.candidate,
                        _firstName.text,
                        _lastName.text,
                        _email.text,
                        _address.text,
                        _birthDate ?? DateTime(1980, 1, 1),
                        _password.text,
                        base32.encode(_secret), // Pass the encoded secret
                        _verification.text,
                        _public,
                      );
                }
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
