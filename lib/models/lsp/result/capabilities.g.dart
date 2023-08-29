// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerCapabilities _$$_ServerCapabilitiesFromJson(
        Map<String, dynamic> json) =>
    _$_ServerCapabilities(
      executeCommandProvider: ExecuteCommandProvider.fromJson(
          json['executeCommandProvider'] as Map<String, dynamic>),
      workspace: Workspace.fromJson(json['workspace'] as Map<String, dynamic>),
      workspaceSymbolProvider: json['workspaceSymbolProvider'] as bool,
    );

Map<String, dynamic> _$$_ServerCapabilitiesToJson(
        _$_ServerCapabilities instance) =>
    <String, dynamic>{
      'executeCommandProvider': instance.executeCommandProvider,
      'workspace': instance.workspace,
      'workspaceSymbolProvider': instance.workspaceSymbolProvider,
    };

_$_ExecuteCommandProvider _$$_ExecuteCommandProviderFromJson(
        Map<String, dynamic> json) =>
    _$_ExecuteCommandProvider(
      commands:
          (json['commands'] as List<dynamic>).map((e) => e as String).toList(),
      workDoneProgress: json['workDoneProgress'] as bool,
    );

Map<String, dynamic> _$$_ExecuteCommandProviderToJson(
        _$_ExecuteCommandProvider instance) =>
    <String, dynamic>{
      'commands': instance.commands,
      'workDoneProgress': instance.workDoneProgress,
    };

_$_Workspace _$$_WorkspaceFromJson(Map<String, dynamic> json) => _$_Workspace(
      workspaceFolders: WorkspaceFolders.fromJson(
          json['workspaceFolders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WorkspaceToJson(_$_Workspace instance) =>
    <String, dynamic>{
      'workspaceFolders': instance.workspaceFolders,
    };

_$_WorkspaceFolders _$$_WorkspaceFoldersFromJson(Map<String, dynamic> json) =>
    _$_WorkspaceFolders(
      changeNotifications: json['changeNotifications'] as bool,
      supported: json['supported'] as bool,
    );

Map<String, dynamic> _$$_WorkspaceFoldersToJson(_$_WorkspaceFolders instance) =>
    <String, dynamic>{
      'changeNotifications': instance.changeNotifications,
      'supported': instance.supported,
    };
