import 'package:flutter/material.dart';

/// Generates a password field with toggleable visibility.
class PasswordField extends StatefulWidget {
  final Iterable<String>? autofillHints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? errorText;

  const PasswordField({
    super.key,
    this.autofillHints,
    this.controller,
    this.validator,
    this.hintText,
    this.errorText,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: widget.autofillHints ?? [AutofillHints.password],
      obscureText: !_visible,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() => _visible = !_visible);
          },
          child: Icon(_visible ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
