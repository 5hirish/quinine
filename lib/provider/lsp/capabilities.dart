import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/lsp/result/capabilities.dart';
import '../project.dart';

part 'capabilities.g.dart';

@Riverpod(keepAlive: true)
class Capabilities extends _$Capabilities {
  @override
  ServerCapabilities? build() {
    ref.watch(projectDirectoryPathProvider);
    return null;
  }

  void setCapabilities(ServerCapabilities capabilities) {
    state = capabilities;
  }
}
