import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/lsp/lang/dart.dart';
import '../wrapper/process.dart';

part 'lsp.g.dart';

@Riverpod(keepAlive: true)
Future<DartLSPService> dartLSP(DartLSPRef ref) async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  DartLSPService service = await DartLSPService.start(
      processWrapper: ActualProcessWrapper(),
      clientId: packageInfo.packageName,
      clientVersion: packageInfo.version,
      logFilePath: '${packageInfo.packageName}-dart-sdk-lsp.log');

  ref.onDispose(service.stop);

  return service;
}
