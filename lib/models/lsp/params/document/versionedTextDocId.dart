import 'package:freezed_annotation/freezed_annotation.dart';

part 'versionedTextDocId.g.dart';
part 'versionedTextDocId.freezed.dart';

@freezed
class VersionedTextDocId with _$VersionedTextDocId {
  const factory VersionedTextDocId({
    required String uri,
    required int version,
  }) = _VersionedTextDocId;

  factory VersionedTextDocId.fromJson(Map<String, dynamic> json) =>
      _$VersionedTextDocIdFromJson(json);
}
