import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../logger.dart';
import '../../config/lang.dart';
import '../../models/log_level.dart';
import '../../models/lsp/error.dart';
import '../../models/lsp/params/capabilities.dart';
import '../../models/lsp/params/clientInfo.dart';
import '../../models/lsp/params/initializationOptions.dart';
import '../../models/lsp/params/initialize.dart';
import '../../models/lsp/params/workspaceFolder.dart';
import '../../services/lsp/base.dart';
import '../../utils.dart';
import '../../wrapper/process.dart';
import '../notifications.dart';
import '../project.dart';

part 'base.g.dart';

/// A foundational provider made for the LSPService since it will be the
/// backbone of all the language-specific functionalities.
/// The provider will be kept alive as long as there's at least one listener.
@Riverpod(keepAlive: true)
class LSP extends _$LSP {
  late String? _workspaceRootUri;
  bool _isServerInitialized = false;

  Future<LSPService> startDartLSP() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    LSPService service = await LSPService.createLSPService(
        language: LSPLanguage.dart,
        processWrapper: ActualProcessWrapper(),
        clientId: packageInfo.packageName,
        clientVersion: packageInfo.version,
        logFilePath: '${packageInfo.packageName}-dart-sdk-lsp.log');

    ref.onDispose(service.stop);

    return service;
  }

  @override
  Future<LSPService?> build({LSPLanguage language = LSPLanguage.dart}) async {
    _workspaceRootUri = ref.watch(projectDirectoryPathProvider);
    if (_workspaceRootUri == null) {
      return null;
    }

    LSPService? lspDart = await startDartLSP();
    await initializeLSP();

    return lspDart;
  }

  Future<void> initializeLSP() async {
    /// If the working directory is null, return
    if (_workspaceRootUri == null) {
      return;
    }

    /// If the state is empty and server is not initialised, start it
    if (!state.hasValue || state.requireValue == null) {
      _isServerInitialized = false;
      state = AsyncData(await startDartLSP());
    }

    /// If the server is already initialised, then shut it down, start again and reinitialise
    if (_isServerInitialized) {
      await state.requireValue!.stop();
      state = AsyncData(await startDartLSP());

      ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
            'Dart LSP server restarted!',
            logLevel: LogLevel.info,
          );
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    LSPService? lspDart = state.requireValue;
    int lspParentProcessId = await lspDart!.getParentProcessId();

    if (lspParentProcessId == -1) {
      /// If the parent process id is -1, it means that the server is not running
      state = AsyncData(await startDartLSP());
      lspDart = state.requireValue;
      lspParentProcessId = await lspDart!.getParentProcessId();

      if (lspParentProcessId == -1) {
        ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
              'Failed to start Dart LSP server',
              logLevel: LogLevel.fatal,
            );
        return;
      }
    }

    /// Initialise the server
    final directoryUri = Uri.parse(_workspaceRootUri!);
    WorkspaceFolder workspaceFolder = WorkspaceFolder(
      uri: directoryUri,
      name: basename(_workspaceRootUri!),
    );

    Initialize initialize = Initialize(
      processId: lspParentProcessId,
      rootUri: directoryUri.toString(),
      capabilities: clientCapabilities,
      initializationOptions: const InitializationOptions(),
      trace: "verbose",
      workspaceFolder: [workspaceFolder],
      clientInfo: ClientInfo(
          name: packageInfo.packageName, version: packageInfo.version),
      locale: getCurrentLocale(),
    );

    try {
      Map<String, dynamic> initialized = await lspDart.initialize(initialize);
      logger.i("LSP:initialize: >>>");

      if (initialized['capabilities'] != null &&
          initialized['serverInfo'] != null) {
        lspDart.initialized();
        _isServerInitialized = true;
        logger.i("LSP:initialized: <<< ");

        ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
              'Dart LSP server initialized!',
              logLevel: LogLevel.info,
            );
      }
    } catch (err) {
      if (err is LSPError) {
        if (err.code == -32002) {
          ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
                'Dart LSP server is already initialized',
                logLevel: LogLevel.info,
              );
        } else {
          ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
                'Failed to initialize Dart LSP server',
                logLevel: LogLevel.fatal,
              );
        }
      }
      logger.e(err);
    }
  }

  Future<void> stop() async {
    if (state.hasValue && state.requireValue != null) {
      await state.requireValue!.stop();
      _isServerInitialized = false;
    }

    ref.watch(inAppNotificationStateProvider.notifier).fireInNotification(
          'Dart LSP server shutdown!',
          logLevel: LogLevel.info,
        );
  }
}
