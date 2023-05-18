import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../intents/file.dart';

class KeyActivators {
  static SingleActivator cmdS =
      const SingleActivator(LogicalKeyboardKey.keyS, meta: true);
}

const fileOperationShortcuts = {
  SingleActivator(LogicalKeyboardKey.keyS, meta: true): SaveFileIntent(),

  // SingleActivator(LogicalKeyboardKey.keyC, meta: true): ...,
  // SingleActivator(LogicalKeyboardKey.keyV, meta: true): ...,
  // SingleActivator(LogicalKeyboardKey.keyX, meta: true): ...,
};
