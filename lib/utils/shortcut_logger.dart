import 'package:flutter/material.dart';

import '../logger.dart';

class LoggingShortcutManager extends ShortcutManager {
  LoggingShortcutManager({required Map<ShortcutActivator, Intent> shortcuts})
      : super(shortcuts: shortcuts);

  @override
  KeyEventResult handleKeypress(BuildContext context, RawKeyEvent event) {
    final KeyEventResult result = super.handleKeypress(context, event);
    if (result == KeyEventResult.handled) {
      logger.d('Handled shortcut ${event.logicalKey.debugName}');
    }
    return result;
  }
}