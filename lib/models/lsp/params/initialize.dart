import 'package:freezed_annotation/freezed_annotation.dart';

import 'clientInfo.dart';
import 'initializationOptions.dart';
import 'workspaceFolder.dart';

part 'initialize.g.dart';
part 'initialize.freezed.dart';

@freezed
class Initialize with _$Initialize {
  const factory Initialize({
    required int
        processId, // process Id of parent process that started the server

    required ClientInfo? clientInfo, // Information about the client
    required String? locale, // Uses IETF language tags as the value's syntax
    required String? trace, // The initial trace setting
    required Map<String, dynamic> capabilities,
    InitializationOptions? initializationOptions,
    List<WorkspaceFolder>? workspaceFolder,
  }) = _Initialize;

  factory Initialize.fromJson(Map<String, dynamic> json) =>
      _$InitializeFromJson(json);
}
