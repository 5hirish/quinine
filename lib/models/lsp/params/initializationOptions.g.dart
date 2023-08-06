// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initializationOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitializationOptions _$$_InitializationOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_InitializationOptions(
      allowOpenUri: json['allowOpenUri'] as bool? ?? true,
      appHost: json['appHost'] as String? ?? "desktop",
      closingLabels: json['closingLabels'] as bool? ?? true,
      flutterOutline: json['flutterOutline'] as bool? ?? true,
      onlyAnalyzeProjectsWithOpenFiles:
          json['onlyAnalyzeProjectsWithOpenFiles'] as bool? ?? false,
      outline: json['outline'] as bool? ?? true,
      suggestFromUnimportedLibraries:
          json['suggestFromUnimportedLibraries'] as bool? ?? true,
    );

Map<String, dynamic> _$$_InitializationOptionsToJson(
        _$_InitializationOptions instance) =>
    <String, dynamic>{
      'allowOpenUri': instance.allowOpenUri,
      'appHost': instance.appHost,
      'closingLabels': instance.closingLabels,
      'flutterOutline': instance.flutterOutline,
      'onlyAnalyzeProjectsWithOpenFiles':
          instance.onlyAnalyzeProjectsWithOpenFiles,
      'outline': instance.outline,
      'suggestFromUnimportedLibraries': instance.suggestFromUnimportedLibraries,
    };
