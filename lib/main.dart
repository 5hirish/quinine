import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core.dart';
import 'utils/state_logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: QuinineCore()
    )
  );
}
