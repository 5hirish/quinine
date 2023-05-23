import 'package:freezed_annotation/freezed_annotation.dart';

part 'workspaceFolder.g.dart';
part 'workspaceFolder.freezed.dart';

@freezed
class WorkspaceFolder with _$WorkspaceFolder {
  const factory WorkspaceFolder({
    required Uri uri,
    required String name,
  }) = _WorkspaceFolder;

  factory WorkspaceFolder.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFolderFromJson(json);
}
