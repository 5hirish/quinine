import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/lsp/params/registrations.dart';
import '../../models/lsp/result/capabilities.dart';
import '../project.dart';

part 'capabilities.g.dart';

@Riverpod(keepAlive: true)
class LSPServerCapabilities extends _$LSPServerCapabilities {
  @override
  ServerCapabilities? build() {
    ref.watch(projectDirectoryPathProvider);
    return null;
  }

  void setCapabilities(ServerCapabilities capabilities) {
    state = capabilities;
  }
}

@Riverpod(keepAlive: true)
class LSPClientCapabilities extends _$LSPClientCapabilities {
  @override
  List<ClientRegistrations>? build() {
    ref.watch(projectDirectoryPathProvider);
    return null;
  }

  void register(List<ClientRegistrations> capabilities) {
    state = capabilities;
  }

  ClientRegistrations? getMethodCapability(String method) {
    if (state != null) {
      return state?.firstWhere((element) => element.method == method);
    }
    return null;
  }
}
