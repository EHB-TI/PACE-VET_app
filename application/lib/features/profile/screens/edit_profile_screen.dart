import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/extensions/build_context_extensions.dart';
import 'package:pace_vet/features/profile/cubit/profile_cubit.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet/shared/widgets/date_form_field.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late Date? _birthdate;
  late TextEditingController _address;

  @override
  void initState() {
    final user = context.getCurrentUser();

    _firstName = TextEditingController(text: user.name);
    _lastName = TextEditingController(text: user.familyName);
    _email = TextEditingController(text: user.email);
    _birthdate = user.dateOfBirth ?? Date.now();
    _address = TextEditingController(text: user.address);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) => current is ProfileUpdatedState,
      listener: (context, state) {
        context.read<AuthBloc>().add(AuthLoadUserEvent());
        context.pop();
      },
      builder: (context, state) {
        if (state is ProfileInitialState) {
          return _buildProfile(context, state.user, state.validation);
        } else if (state is ProfileFailedToUpdateState) {
          return _buildProfile(context, state.user, state.validation);
        }

        return UserLayout.loading();
      },
    );
  }

  Widget _buildProfile(
      BuildContext context, User user, ValidationMap validation) {
    return UserLayout(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ProfileCubit>().save(
              context.getCurrentUser(),
              _firstName.text,
              _lastName.text,
              _email.text,
              _birthdate,
              _address.text,
            ),
        child: const Icon(Icons.save),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              controller: _firstName,
              decoration: InputDecoration(
                  labelText: 'First name', errorText: validation['/name']),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _lastName,
              decoration: InputDecoration(
                  labelText: 'Last name',
                  errorText: validation['/family_name']),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: validation['/email'],
              ),
            ),
            const SizedBox(height: 12.0),
            DateFormField(
              value: _birthdate?.toDateTime() ?? DateTime.now(),
              onChange: (value) => setState(() => _birthdate = value?.toDate()),
              decoration: InputDecoration(
                labelText: 'Birth date',
                errorText: validation['/date_of_birth'],
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _address,
              decoration: InputDecoration(
                labelText: 'Address',
                errorText: validation['/address'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
