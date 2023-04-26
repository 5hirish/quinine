
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData blueM3LightTheme = FlexThemeData.light(
  scheme: FlexScheme.blueM3,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 1,
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
    keepPrimary: true,
  ),
  tones: FlexTones.jolly(Brightness.light),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
);

ThemeData blueM3DarkTheme = FlexThemeData.dark(
  scheme: FlexScheme.blueM3,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 2,
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.jolly(Brightness.dark),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
);