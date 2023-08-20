import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.g.dart';
part 'progress.freezed.dart';

@freezed
class Progress with _$Progress {
  const factory Progress(
      {required String kind,
      required String title,
      bool? boolean,
      String? message,
      int? percentage}) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);
}
