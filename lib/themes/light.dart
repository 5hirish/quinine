import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xFF3C3F41),
    scaffoldBackgroundColor: const Color(0xFFf3f3f3),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3C3F41),
      foregroundColor: Colors.white,
    )
  );
}
