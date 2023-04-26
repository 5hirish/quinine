import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme.freezed.dart';


@freezed
class CoreTheme with _$CoreTheme {

  const factory CoreTheme({
    required ThemeMode mode,
  }) = _CoreTheme;
}

@freezed
class CoreCodeTheme with _$CoreCodeTheme {

  const factory CoreCodeTheme({
    required Map<String, TextStyle> style,
    required String? fontFamily,
    required double? fontSize,
  }) = _CoreCodeTheme;
}