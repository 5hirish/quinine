import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../logger.dart';
import '../provider/lsp.dart';
import '../provider/project.dart';

class LifecycleObserver with WidgetsBindingObserver {
  final WidgetRef ref;
  Timer? _shutdownTimer;
  static const int _shutdownTimeout = 1000 * 60 * 5; // 5 minutes

  LifecycleObserver(this.ref);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    String? rootWorkspaceUri = ref.read(projectDirectoryPathProvider);

    if (rootWorkspaceUri == null || rootWorkspaceUri.isEmpty) {
      return;
    }

    switch (state) {
      /// The application is not currently visible to the user, not responding to
      /// user input, and running in the background.
      case AppLifecycleState.paused:
        // Handle backgrounding or app termination
        _startShutdownTimer(rootWorkspaceUri);
        logger.d('<<Lifecycle::PAUSED>>');
        break;

      /// The application is still hosted on a flutter engine but is detached from
      /// any host views.
      case AppLifecycleState.detached:
        // Handle backgrounding or app termination
        _cancelShutdownTimerAndInitialize(rootWorkspaceUri);
        logger.d('<<Lifecycle::DETACHED>>');
        break;

      /// The application is visible and responding to user input.
      case AppLifecycleState.resumed:
        // Handle foreground
        _cancelShutdownTimerAndInitialize(rootWorkspaceUri);
        logger.d('<<Lifecycle::RESUMED>>');
        break;

      /// The application is in an inactive state and is not receiving user input.
      case AppLifecycleState.inactive:
        logger.d('<<Lifecycle::INACTIVE>>');
        // App is inactive
        break;
    }
  }

  void _startShutdownTimer(String rootWorkspaceUri) {
    _shutdownTimer?.cancel(); // Cancel any previous timer.
    _shutdownTimer = Timer(const Duration(minutes: _shutdownTimeout), () {
      ref.read(dartLSPProvider(rootWorkspaceUri).notifier).shutdown();
    });
  }

  void _cancelShutdownTimerAndInitialize(String rootWorkspaceUri) {
    _shutdownTimer?.cancel();
    ref.read(dartLSPProvider(rootWorkspaceUri).future).then(
          (dartLSPService) => ref
              .read(
                dartLSPProvider(rootWorkspaceUri).notifier,
              )
              .initializeLSP(),
        );
  }
}
