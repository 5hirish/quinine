import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../logger.dart';
import '../../config/lang.dart';
import '../../models/log_level.dart';
import '../../models/lsp/error.dart';
import '../../models/lsp/params/capabilities.dart';
import '../../models/lsp/params/clientInfo.dart';
import '../../models/lsp/params/configuration.dart';
import '../../models/lsp/params/configurationItem.dart';
import '../../models/lsp/params/initializationOptions.dart';
import '../../models/lsp/params/initialize.dart';
import '../../models/lsp/params/message.dart';
import '../../models/lsp/params/progress.dart';
import '../../models/lsp/params/workspaceFolder.dart';
import '../../models/lsp/result/capabilities.dart';
import '../../models/lsp/result/workspace/dart/configuration.dart';
import '../../services/lsp/base.dart';
import '../../services/lsp/window.dart';
import '../../services/lsp/workspace.dart';
import '../../utils.dart';
import '../../wrapper/process.dart';
import '../notifications.dart';
import '../project.dart';
import 'capabilities.dart';

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

    LSPService lspDart = await startDartLSP();

    lspDart.serverRequests.listen((lspServerRequest) {
      respondRequest(lspDart, lspServerRequest);
    });

    lspDart.serverMessages.listen((lspServerMsg) {
      consumeMessage(lspDart, lspServerMsg);
    });

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
      capabilities: clientCapabilitiesMap,
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
        ref.read(lSPServerCapabilitiesProvider.notifier).setCapabilities(
            ServerCapabilities.fromJson(initialized['capabilities']));

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

  void respondRequest(
      LSPService lspDart, Map<String, dynamic> lspServerRequest) {
    int id = lspServerRequest['id'];
    String method = lspServerRequest['method'];
    Map<String, dynamic> params = lspServerRequest['params'];

    switch (method) {
      case WorkspaceFeatures.mWorkspaceConfiguration:
        if (params.containsKey('items')) {
          Configuration lspConfig = Configuration.fromJson(params);
          if (lspConfig.items.isNotEmpty) {
            List<Map<String, dynamic>> lspSectionConfigs = [];
            for (ConfigurationItem item in lspConfig.items) {
              if (workspaceConfiguration.containsKey(item.section)) {
                lspSectionConfigs.add(workspaceConfiguration[item.section]!);
              }
            }

            if (lspSectionConfigs.isNotEmpty) {
              WorkspaceFeatures workspaceFeatures = WorkspaceFeatures(lspDart);
              workspaceFeatures.workspaceConfiguration(id, lspSectionConfigs);
              logger.d("LSP:configuration: >>>");
            }
          }
        }
        break;
      case LSPService.mRegisterCapability:
        if (params.containsKey('registrations')) {
          //TODO: Client needs to implement the server registered capabilities

          ClientCapabilities clientCapabilities =
              ClientCapabilities.fromJson(params);
          ref
              .read(lSPClientCapabilitiesProvider.notifier)
              .register(clientCapabilities.registrations!);

          lspDart.registerCapability(id);
          logger.d("LSP:registerCapability: >>>");
        }
        break;
      case LSPService.mUnRegisterCapability:
        if (params.containsKey('unregisterations')) {
          //TODO: Client needs to un-implement the server registered capabilities
          lspDart.unregisterCapability(id);
          logger.d("LSP:unregisterCapability: >>>");
        }
        break;
      case WindowFeatures.mWindowWorkDoneProgressCreate:
        if (params.containsKey('token')) {
          lspDart.sendResponse(id);
          logger.d("LSP:unregisterCapability: >>>");
        }
        break;
      default:
        logger.w("LSP:$method: No response defined !!!");
        break;
    }
  }

  void consumeMessage(LSPService lspDart, Map<String, dynamic> lspServerMsg) {
    String method = lspServerMsg['method'];
    Map<String, dynamic> params = lspServerMsg['params'];

    switch (method) {
      case WindowFeatures.mWindowShowMessage:
        if (params.containsKey('message')) {
          logger.d("LSP:showMessage: <<< ${params['message']}");
          Message lspMsg = Message.fromJson(params);
          LogLevel logLevel = LogLevel.info;
          if (lspMsg.type == 1) {
            logLevel = LogLevel.error;
          } else if (lspMsg.type == 2) {
            logLevel = LogLevel.warning;
          } else if (lspMsg.type == 3) {
            logLevel = LogLevel.info;
          } else if (lspMsg.type == 4) {
            logLevel = LogLevel.debug;
          }
          ref.read(inAppNotificationStateProvider.notifier).fireInNotification(
                lspMsg.message,
                logLevel: logLevel,
                title: "LSP:$method",
              );
        }
        break;
      case WindowFeatures.mWindowLogMessage:
        logger.d("LSP:logMessage: <<< ${params['message']}");
        break;
      case LSPService.m$Progress:
        // ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workDoneProgress
        if (params.containsKey('token') && params.containsKey('value')) {
          logger.d("LSP:\$progress: <<< ${params['value']}");
          String token = params['token'];
          Progress lspProgress = Progress.fromJson(params['value']);
          LogLevel logLevel = LogLevel.info;

          //TODO: Implement progress indicator
          String title = lspProgress.title ?? "Progress";
          ref.read(inAppNotificationStateProvider.notifier).fireInNotification(
                lspProgress.message ?? lspProgress.kind,
                logLevel: logLevel,
                title: "LSP: $title",
              );
        }
        break;
      default:
        logger.w("LSP:$method: No notifier defined !!!");
        break;
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
