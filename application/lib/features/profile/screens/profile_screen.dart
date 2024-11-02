import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet/features/profile/routes.dart';
import 'package:pace_vet/shared/widgets/date_form_field.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSignedInState) {
          return _buildProfile(context, state.user);
        }

        return UserLayout.loading();
      },
    );
  }

  Widget _buildProfile(BuildContext context, User user) {
    return UserLayout(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => EditProfileRoute().push(context),
        child: const Icon(Icons.edit),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              readOnly: true,
              initialValue: user.fullName,
              decoration: const InputDecoration(
                labelText: 'Full name',
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              readOnly: true,
              initialValue: user.email,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 12.0),
            DateFormField(
              readOnly: true,
              value: user.dateOfBirth!.toDateTime(),
              onChange: (_) {},
              decoration: const InputDecoration(
                labelText: 'Birth date',
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              readOnly: true,
              initialValue: user.address,
              decoration: const InputDecoration(
                labelText: 'Address',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
