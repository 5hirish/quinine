import '../../models/lsp/params/document/textDocContentChange.dart';
import '../../models/lsp/params/document/textDocItem.dart';
import '../../models/lsp/params/document/versionedTextDocId.dart';
import 'base.dart';

/// Each of these classes will represent a feature set of the LSP protocol.
/// They will operate on a given LSPService, using its methods to
/// send/receive messages.
/// ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_synchronization
class DocumentSynchronization {
  final LSPService lspService;

  DocumentSynchronization(this.lspService);

  Future<Map<String, dynamic>> textDocDidOpen(TextDocItem textDocItem) {
    /**
     * The document open notification is sent from the client to the server to
     * signal newly opened text documents. The document’s content is now
     * managed by the client and the server must not try to read the
     * document’s content using the document’s Uri.
     * Note that a server’s ability to fulfill requests is independent of
     * whether a text document is open or closed.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_didOpen
     */
    return lspService.sendNotification(
        'textDocument/didOpen', {'textDocument': textDocItem});
  }

  Future<Map<String, dynamic>> textDocDidChange(
      VersionedTextDocId versionedTextDocId,
      List<TextDocContentChange> contentChanges) {
    /**
     * The document change notification is sent from the client to the server
     * to signal changes to a text document. Before a client can change a text
     * document it must claim ownership of its content using the
     * textDocument/didOpen notification
     *
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_didChange
     *
     * contentChanges: An event describing a change to a text document.
     *    If only a text is provided it is considered to be the full
     *    content of the document.
     */
    return lspService.sendNotification('textDocument/didChange',
        {'textDocument': versionedTextDocId, 'contentChanges': contentChanges});
  }

  Future<Map<String, dynamic>> textDocDidClose(String uri) {
    /**
     * The document close notification is sent from the client to the server
     * when the document got closed in the client. The document’s master now
     * exists where the document’s Uri points to
     */
    return lspService.sendNotification('textDocument/didClose', {
      'textDocument': {'uri': uri}
    });
  }
}
