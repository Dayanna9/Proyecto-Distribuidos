import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF52525B)),
    inputDecorationTheme: InputDecorationTheme(
      filled: true, fillColor: const Color(0xFFF7F7F8),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(9), borderSide: BorderSide.none),
    ),
  );
}
