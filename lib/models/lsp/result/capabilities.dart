import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'capabilities.freezed.dart';
part 'capabilities.g.dart';

ServerCapabilities serverCapabilitiesFromJson(String str) =>
    ServerCapabilities.fromJson(json.decode(str));

String serverCapabilitiesToJson(ServerCapabilities data) =>
    json.encode(data.toJson());

@freezed
class ServerCapabilities with _$ServerCapabilities {
  const factory ServerCapabilities({
    required ExecuteCommandProvider executeCommandProvider,
    required Workspace workspace,
    required bool workspaceSymbolProvider,
  }) = _ServerCapabilities;

  factory ServerCapabilities.fromJson(Map<String, dynamic> json) =>
      _$ServerCapabilitiesFromJson(json);
}

@freezed
class ExecuteCommandProvider with _$ExecuteCommandProvider {
  const factory ExecuteCommandProvider({
    required List<String> commands,
    required bool workDoneProgress,
  }) = _ExecuteCommandProvider;

  factory ExecuteCommandProvider.fromJson(Map<String, dynamic> json) =>
      _$ExecuteCommandProviderFromJson(json);
}

@freezed
class Workspace with _$Workspace {
  const factory Workspace({
    required WorkspaceFolders workspaceFolders,
  }) = _Workspace;

  factory Workspace.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFromJson(json);
}

@freezed
class WorkspaceFolders with _$WorkspaceFolders {
  const factory WorkspaceFolders({
    required bool changeNotifications,
    required bool supported,
  }) = _WorkspaceFolders;

  factory WorkspaceFolders.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFoldersFromJson(json);
}
