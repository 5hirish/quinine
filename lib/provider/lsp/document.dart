import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/lang.dart';
import '../../models/lsp/params/document/textDocContentChange.dart';
import '../../models/lsp/params/document/textDocItem.dart';
import '../../models/lsp/params/document/versionedTextDocId.dart';
import '../../services/file.dart';
import '../../services/lsp/document.dart';
import 'base.dart';

part 'document.g.dart';

/// A feature specific provider made for the LSPService specific functionalities
@Riverpod(keepAlive: true)
class LSPDocument extends _$LSPDocument {
  late String _fileExtension;
  late String _uri;
  late String _text;
  String _languageId = LSPLanguage.dart.name;
  LSPLanguage _lspLanguage = LSPLanguage.dart;
  int _version = 0;
  bool _isLangSupported = false;

  Future<void> initializeDocument(String filePath) async {
    _uri = Uri.file(filePath).toString();
    FileService fileService = FileService(filePath);
    _fileExtension = fileService.getFilePathExtension();
    LSPLanguage? lspLanguage = lspLangIdFromExt(_fileExtension);
    if (lspLanguage != null) {
      _lspLanguage = lspLanguage;
      _isLangSupported = lspLanguage.isSupported;
      _languageId = lspLanguage.name;
    }
    _text = await fileService.readFileContent();
  }

  @override
  Future<DocumentSynchronization?> build(String uri) async {
    await initializeDocument(uri);
    if (!_isLangSupported) {
      return null;
    }

    final lspService =
        await ref.watch(lSPProvider(language: _lspLanguage).future);
    if (lspService == null) {
      return null;
    }
    return DocumentSynchronization(lspService);
  }

  Future<Map<String, dynamic>?> textDocDidOpen() async {
    if (state.hasValue && state.requireValue != null) {
      TextDocItem textDocItem = TextDocItem(
          uri: _uri, languageId: _languageId, text: _text, version: _version);
      return state.requireValue!.textDocDidOpen(textDocItem);
    }
    return null;
  }

  Future<Map<String, dynamic>?> textDocDidChange(String modifiedText) async {
    if (state.hasValue) {
      // The version number points to the version after all provided content
      // changes have been applied.
      _version++;
      VersionedTextDocId versionedTextDocId =
          VersionedTextDocId(uri: _uri, version: _version);

      // An event describing a change to a text document.
      // If only a text is provided it is considered to be the full content
      // of the document.
      List<TextDocContentChange> contentChanges = [
        TextDocContentChange(text: modifiedText)
      ];

      return state.requireValue!
          .textDocDidChange(versionedTextDocId, contentChanges);
    }
    return null;
  }

  Future<Map<String, dynamic>?> textDocDidClose() async {
    if (state.hasValue && state.requireValue != null) {
      return state.requireValue!.textDocDidClose(_uri);
    }
    return null;
  }
}
