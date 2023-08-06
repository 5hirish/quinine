import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../logger.dart';
import '../models/log_level.dart';
import '../models/lsp/error.dart';
import '../models/lsp/params/capabilities.dart';
import '../models/lsp/params/clientInfo.dart';
import '../models/lsp/params/initializationOptions.dart';
import '../models/lsp/params/initialize.dart';
import '../models/lsp/params/workspaceFolder.dart';
import '../services/lsp/lang/dart.dart';
import '../utils.dart';
import '../wrapper/process.dart';
import 'notifications.dart';

part 'lsp.g.dart';

@Riverpod(keepAlive: true)
class DartLSP extends _$DartLSP {
  late String _workspaceRootUri;
  bool _isServerInitialized = false;

  Future<DartLSPService> startDartLSP() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    DartLSPService service = await DartLSPService.start(
        processWrapper: ActualProcessWrapper(),
        clientId: packageInfo.packageName,
        clientVersion: packageInfo.version,
        logFilePath: '${packageInfo.packageName}-dart-sdk-lsp.log');

    ref.onDispose(service.stop);

    return service;
  }

  @override
  Future<DartLSPService> build(String workspaceRootUri) async {
    _workspaceRootUri = workspaceRootUri;
    return startDartLSP();
  }

  void initializeLSP() async {
    if (!state.hasValue) {
      await startDartLSP();
    }

    if (_isServerInitialized) {
      return;
    }

    DartLSPService lspDart = state.requireValue;
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    int lspParentProcessId = await lspDart.getParentProcessId();

    final directoryUri = Uri.parse(_workspaceRootUri);
    WorkspaceFolder workspaceFolder = WorkspaceFolder(
      uri: directoryUri,
      name: basename(_workspaceRootUri),
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

  void shutdown() {
    if (!state.hasValue) {
      return;
    }
    state.requireValue.stop();
  }
}
