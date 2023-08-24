import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.g.dart';
part 'progress.freezed.dart';

// ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workDoneProgress

@freezed
class Progress with _$Progress {
  const factory Progress(
      {required String kind,

      /// 'begin' | 'report' | 'end'
      String? title,
      bool? cancellable,
      String? message,
      int? percentage}) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);
}

enum ProgressKind {
  begin,
  report,
  end,
}
