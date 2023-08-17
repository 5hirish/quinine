import 'package:quinine/models/lang.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/lsp/params/document/textDocItem.dart';
import '../../services/lsp/document.dart';
import 'base.dart';

part 'document.g.dart';

/// A feature specific provider made for the LSPService specific functionalities
@Riverpod(keepAlive: true)
class LSPDocument extends _$LSPDocument {
  @override
  Future<DocumentSynchronization?> build(
      {SupportedLanguages language = SupportedLanguages.dart}) async {
    final lspService = await ref.watch(lSPProvider(language: language).future);
    if (lspService == null) {
      return null;
    }
    return DocumentSynchronization(lspService);
  }

  Future<Map<String, dynamic>> textDocDidOpen(
      String uri, String languageId, String text, int version) async {
    if (state.hasValue) {
      TextDocItem textDocItem =
          TextDocItem(uri: uri, languageId: languageId, text: text, version: 1);
      return state.requireValue!.textDocDidOpen(textDocItem);
    }
    return {};
  }
}
