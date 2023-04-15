import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme.freezed.dart';


@freezed
class CoreTheme with _$CoreTheme {

  const factory CoreTheme({
    required ThemeMode mode,
  }) = _CoreTheme;
}