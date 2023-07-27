import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/log_level.dart';
import '../models/notification.dart';

part 'notifications.g.dart';

@Riverpod(keepAlive: true)
class InAppNotificationState extends _$InAppNotificationState {
  @override
  InAppNotification? build() {
    return null;
  }

  void fireInNotification(String description,
      {String? title,
      DateTime? firedAt,
      LogLevel logLevel = LogLevel.none,
      int code = -1}) {
    state = InAppNotification(
        description: description,
        logLevel: logLevel,
        code: code,
        title: title,
        firedAt: firedAt ?? DateTime.now());
  }
}
