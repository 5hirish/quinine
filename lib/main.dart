import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:window_manager/window_manager.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import 'core.dart';
import 'utils/state_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  // Set the minimum window size
  windowManager.setMinimumSize(const Size(300, 300));

  // Turn off the # in the URLs on the web
  usePathUrlStrategy();

  runApp(const ProviderScope(observers: [StateLogger()], child: QuinineCore()));
}
