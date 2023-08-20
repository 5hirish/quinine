import '../../models/lsp/params/document/textDocItem.dart';
import 'base.dart';

/// ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#workspace_symbol
class WindowFeatures {
  final LSPService lspService;

  WindowFeatures(this.lspService);

  static const String mWindowShowMessage = 'window/showMessage';
  static const String mWindowLogMessage = 'window/logMessage';
}
