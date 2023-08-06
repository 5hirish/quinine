import 'package:freezed_annotation/freezed_annotation.dart';

part 'range.g.dart';
part 'range.freezed.dart';

@freezed
class Range with _$Range {
  const factory Range({
    required Position start,
    required Position end,
  }) = _Range;

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    required int line, // Line position in a document (zero-based).
    required int
        character, // Character offset on a line in a document (zero-based)
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
