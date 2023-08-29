import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'registrations.freezed.dart';
part 'registrations.g.dart';

ClientRegistrations clientRegistrationsFromJson(String str) =>
    ClientRegistrations.fromJson(json.decode(str));

String clientRegistrationsToJson(ClientRegistrations data) =>
    json.encode(data.toJson());

@freezed
class ClientRegistrations with _$ClientRegistrations {
  const factory ClientRegistrations({
    required String id,
    required String method,
    required RegisterOptions? registerOptions,
  }) = _ClientRegistrations;

  factory ClientRegistrations.fromJson(Map<String, dynamic> json) =>
      _$ClientRegistrationsFromJson(json);
}

@freezed
class RegisterOptions with _$RegisterOptions {
  const factory RegisterOptions({
    required List<DocumentSelector> documentSelector,
    required List<String> codeActionKinds,
    required int syncKind,
    required bool resolveProvider,
    required bool prepareProvider,
    required List<String> triggerCharacters,
    required List<String> retriggerCharacters,
    required String firstTriggerCharacter,
    required List<String> moreTriggerCharacter,
    required List<Filter> filters,
    required Full full,
    required Legend legend,
    required bool range,
  }) = _RegisterOptions;

  factory RegisterOptions.fromJson(Map<String, dynamic> json) =>
      _$RegisterOptionsFromJson(json);
}

@freezed
class DocumentSelector with _$DocumentSelector {
  const factory DocumentSelector({
    required String language,
    required String scheme,
    String? pattern,
  }) = _DocumentSelector;

  factory DocumentSelector.fromJson(Map<String, dynamic> json) =>
      _$DocumentSelectorFromJson(json);
}

@freezed
class Filter with _$Filter {
  const factory Filter({
    required Pattern pattern,
    required String scheme,
  }) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
class Pattern with _$Pattern {
  const factory Pattern({
    required String glob,
    required String matches,
  }) = _Pattern;

  factory Pattern.fromJson(Map<String, dynamic> json) =>
      _$PatternFromJson(json);
}

@freezed
class Full with _$Full {
  const factory Full({
    required bool delta,
  }) = _Full;

  factory Full.fromJson(Map<String, dynamic> json) => _$FullFromJson(json);
}

@freezed
class Legend with _$Legend {
  const factory Legend({
    required List<String> tokenModifiers,
    required List<String> tokenTypes,
  }) = _Legend;

  factory Legend.fromJson(Map<String, dynamic> json) => _$LegendFromJson(json);
}
