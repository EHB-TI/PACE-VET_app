import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<bool?> showConfirmationDialog(
    BuildContext context, Widget content) async {
  return await showAdaptiveDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        content: content,
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => context.pop(false),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => context.pop(true),
          ),
        ],
      );
    },
  );
}
