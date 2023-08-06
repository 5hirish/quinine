import 'package:freezed_annotation/freezed_annotation.dart';

import 'log_level.dart';

part 'notification.g.dart';
part 'notification.freezed.dart';

@freezed
class InAppNotification with _$InAppNotification {
  const factory InAppNotification({
    required String description,
    required LogLevel logLevel,
    required int code,
    String? title,
    DateTime? firedAt,
  }) = _InAppNotification;

  factory InAppNotification.fromJson(Map<String, dynamic> json) =>
      _$InAppNotificationFromJson(json);
}
