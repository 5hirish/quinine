import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_highlight/themes/vs2015.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/theme.dart';

part 'theme.g.dart';

@Riverpod(keepAlive: true)
class CoreThemeState extends _$CoreThemeState {
  
  @override
  CoreTheme build() {
    return const CoreTheme(mode: ThemeMode.system);
  }
  
  void changeMode(ThemeMode mode) {
    state = state.copyWith(mode: mode);
  }
}

@Riverpod(keepAlive: true)
class CoreCodeThemeState extends _$CoreCodeThemeState {

  @override
  CoreCodeTheme build() {
    return CoreCodeTheme(
      style: vs2015Theme,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
      fontSize: 14,
    );
  }

  void changeStyle(Map<String, TextStyle> style) {
    state = state.copyWith(style: style);
  }

  void changeFontSize(double fontSize) {
    state = state.copyWith(fontSize: fontSize);
  }

  void changeFontFam(String fontFam) {
    state = state.copyWith(fontFamily: fontFam);
  }
}