import 'package:flutter/material.dart';

final _inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: const Color.fromARGB(131, 244, 247, 255),
  contentPadding: const EdgeInsets.symmetric(
    horizontal: 18.0,
    vertical: 12.0,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(32.0),
  ),
);

final light = ThemeData(
  useMaterial3: true,
  inputDecorationTheme: _inputDecorationTheme,
);

final dark = ThemeData(
  useMaterial3: true,
  inputDecorationTheme: _inputDecorationTheme,
);
