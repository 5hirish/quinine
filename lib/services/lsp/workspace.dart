import 'base.dart';

/// ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workspace_symbol
class WorkspaceFeatures {
  final LSPService lspService;

  WorkspaceFeatures(this.lspService);

  static const String mWorkspaceConfiguration = 'workspace/configuration';

  void workspaceConfiguration(
      int requestId, List<Map<String, dynamic>> lspAny) {
    /**
     * The workspace/configuration request is sent from the server to the
     * client to fetch configuration settings from the client.
     * The request can fetch several configuration settings in one roundtrip.
     * The order of the returned configuration settings correspond to the order
     * of the passed ConfigurationItems
     * (e.g. the first item in the response is the result for the first
     * configuration item in the params).
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workspace_configuration
     */

    return lspService.sendResponse(requestId, lspAny);
  }
}
