// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientRegistrations _$$_ClientRegistrationsFromJson(
        Map<String, dynamic> json) =>
    _$_ClientRegistrations(
      id: json['id'] as String,
      method: json['method'] as String,
      registerOptions: json['registerOptions'] == null
          ? null
          : RegisterOptions.fromJson(
              json['registerOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClientRegistrationsToJson(
        _$_ClientRegistrations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': instance.method,
      'registerOptions': instance.registerOptions,
    };

_$_RegisterOptions _$$_RegisterOptionsFromJson(Map<String, dynamic> json) =>
    _$_RegisterOptions(
      documentSelector: (json['documentSelector'] as List<dynamic>)
          .map((e) => DocumentSelector.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeActionKinds: (json['codeActionKinds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      syncKind: json['syncKind'] as int,
      resolveProvider: json['resolveProvider'] as bool,
      prepareProvider: json['prepareProvider'] as bool,
      triggerCharacters: (json['triggerCharacters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      retriggerCharacters: (json['retriggerCharacters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      firstTriggerCharacter: json['firstTriggerCharacter'] as String,
      moreTriggerCharacter: (json['moreTriggerCharacter'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      filters: (json['filters'] as List<dynamic>)
          .map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      full: Full.fromJson(json['full'] as Map<String, dynamic>),
      legend: Legend.fromJson(json['legend'] as Map<String, dynamic>),
      range: json['range'] as bool,
    );

Map<String, dynamic> _$$_RegisterOptionsToJson(_$_RegisterOptions instance) =>
    <String, dynamic>{
      'documentSelector': instance.documentSelector,
      'codeActionKinds': instance.codeActionKinds,
      'syncKind': instance.syncKind,
      'resolveProvider': instance.resolveProvider,
      'prepareProvider': instance.prepareProvider,
      'triggerCharacters': instance.triggerCharacters,
      'retriggerCharacters': instance.retriggerCharacters,
      'firstTriggerCharacter': instance.firstTriggerCharacter,
      'moreTriggerCharacter': instance.moreTriggerCharacter,
      'filters': instance.filters,
      'full': instance.full,
      'legend': instance.legend,
      'range': instance.range,
    };

_$_DocumentSelector _$$_DocumentSelectorFromJson(Map<String, dynamic> json) =>
    _$_DocumentSelector(
      language: json['language'] as String,
      scheme: json['scheme'] as String,
      pattern: json['pattern'] as String?,
    );

Map<String, dynamic> _$$_DocumentSelectorToJson(_$_DocumentSelector instance) =>
    <String, dynamic>{
      'language': instance.language,
      'scheme': instance.scheme,
      'pattern': instance.pattern,
    };

_$_Filter _$$_FilterFromJson(Map<String, dynamic> json) => _$_Filter(
      pattern: Pattern.fromJson(json['pattern'] as Map<String, dynamic>),
      scheme: json['scheme'] as String,
    );

Map<String, dynamic> _$$_FilterToJson(_$_Filter instance) => <String, dynamic>{
      'pattern': instance.pattern,
      'scheme': instance.scheme,
    };

_$_Pattern _$$_PatternFromJson(Map<String, dynamic> json) => _$_Pattern(
      glob: json['glob'] as String,
      matches: json['matches'] as String,
    );

Map<String, dynamic> _$$_PatternToJson(_$_Pattern instance) =>
    <String, dynamic>{
      'glob': instance.glob,
      'matches': instance.matches,
    };

_$_Full _$$_FullFromJson(Map<String, dynamic> json) => _$_Full(
      delta: json['delta'] as bool,
    );

Map<String, dynamic> _$$_FullToJson(_$_Full instance) => <String, dynamic>{
      'delta': instance.delta,
    };

_$_Legend _$$_LegendFromJson(Map<String, dynamic> json) => _$_Legend(
      tokenModifiers: (json['tokenModifiers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tokenTypes: (json['tokenTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_LegendToJson(_$_Legend instance) => <String, dynamic>{
      'tokenModifiers': instance.tokenModifiers,
      'tokenTypes': instance.tokenTypes,
    };
