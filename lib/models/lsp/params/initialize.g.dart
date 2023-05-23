// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initialize _$$_InitializeFromJson(Map<String, dynamic> json) =>
    _$_Initialize(
      processId: json['processId'] as int,
      clientInfo: json['clientInfo'] == null
          ? null
          : ClientInfo.fromJson(json['clientInfo'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
      trace: json['trace'] as String?,
      capabilities: json['capabilities'] as Map<String, dynamic>,
      initializationOptions: json['initializationOptions'] == null
          ? null
          : InitializationOptions.fromJson(
              json['initializationOptions'] as Map<String, dynamic>),
      workspaceFolder: (json['workspaceFolder'] as List<dynamic>?)
          ?.map((e) => WorkspaceFolder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InitializeToJson(_$_Initialize instance) =>
    <String, dynamic>{
      'processId': instance.processId,
      'clientInfo': instance.clientInfo,
      'locale': instance.locale,
      'trace': instance.trace,
      'capabilities': instance.capabilities,
      'initializationOptions': instance.initializationOptions,
      'workspaceFolder': instance.workspaceFolder,
    };
