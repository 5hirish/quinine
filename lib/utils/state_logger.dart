// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logger.dart';

/// Useful to log state change in our application
/// Read the logs and you'll better understand what's going on under the hood
class StateLogger extends ProviderObserver {

  const StateLogger();

  @override
  void didUpdateProvider(ProviderBase provider,
      Object? previousValue, Object? newValue,
      ProviderContainer container) {

    // logger.d('''
    //   {
    //     provider: ${provider.name ?? provider.runtimeType},
    //     oldValue: $previousValue,
    //     newValue: $newValue
    //   }
    // ''');

    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}