import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A wrapper around [TextFormField] that picks date/datetime.
class DateFormField extends StatefulWidget {
  /// The current value to show for this input.
  final DateTime value;

  /// A callback called when the value changes.
  final FutureOr<void> Function(DateTime?) onChange;

  /// An optional format to display the values with.
  final DateFormat? format;

  /// Optionally a minimum value for the date picker (defaults to `DateTime(0)`).
  final DateTime? firstDate;

  /// Optionally a maximum value for the date picker (defaults to `DateTime.now()`).
  final DateTime? lastDate;

  /// An [InputDecoration] that is applied to the underlying [TextFormField].
  final InputDecoration? decoration;

  /// A validation function.
  final String? Function(DateTime)? validator;

  final bool readOnly;

  const DateFormField({
    super.key,
    required this.value,
    required this.onChange,
    this.format,
    this.firstDate,
    this.lastDate,
    this.decoration,
    this.validator,
    this.readOnly = false,
  });

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  final _value = TextEditingController();
  late DateFormat _format;

  @override
  void initState() {
    super.initState();

    _format = widget.format ?? DateFormat('yyyy-MM-dd');

    _value.text = _format.format(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: _value,
      decoration: widget.decoration,
      validator: (value) {
        if (widget.validator != null) {
          return widget.validator!(widget.value);
        }

        return null;
      },
      onTap: () async {
        if (widget.readOnly) return;

        var selected = await showDatePicker(
          context: context,
          initialDate: widget.value,
          firstDate: widget.firstDate ?? DateTime(0),
          lastDate: widget.lastDate ?? DateTime.now(),
        );

        if (selected != null) {
          _value.text = _format.format(selected);
        }

        await widget.onChange(selected);
      },
    );
  }
}
