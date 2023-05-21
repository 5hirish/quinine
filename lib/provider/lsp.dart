import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/lsp/dart.dart';

part 'lsp.g.dart';

@Riverpod(keepAlive: true)
DartLspService dartLSP(DartLSPRef ref) {
  final service = DartLspService();
  ref.onDispose(service.stop);
  return service;
}
