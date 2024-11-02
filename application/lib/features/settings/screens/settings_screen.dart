import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SettingsScreen extends StatelessWidget {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  const SettingsScreen({super.key});

  Future<void> _deleteUser(BuildContext context) async {
    // Dispatching an event to delete the user
    context.read<AuthBloc>().add(AuthDeleteUserEvent());

    // After deleting, log out the user
    context.read<AuthBloc>().add(AuthSignOutEvent());

    // Provide feedback to the user that their account has been deleted and they've been logged out
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            'Your account has been successfully deleted and you have been logged out.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.read<AuthBloc>().add(AuthSignOutEvent()),
              child: Text('Sign out'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () async {
                final shouldDelete = await showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Are you sure?'),
                      content: Text(
                          'This action will permanently delete your account and log you out.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text('Delete'),
                        ),
                      ],
                    );
                  },
                );

                if (shouldDelete == true) {
                  _deleteUser(context);
                }
              },
              child: Text('Delete Account'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
