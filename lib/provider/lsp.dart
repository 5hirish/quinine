import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/lsp/dart.dart';

part 'lsp.g.dart';

@Riverpod(keepAlive: true)
DartLSPService dartLSP(DartLSPRef ref) {
  final service = DartLSPService();

  ref.onDispose(service.stop);

  return service;
}
