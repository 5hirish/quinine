import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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