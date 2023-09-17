import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/lang.dart';
import '../../models/lsp/params/document/range.dart';
import '../../models/lsp/params/document/textDocContentChange.dart';
import '../../models/lsp/params/document/textDocItem.dart';
import '../../models/lsp/params/document/versionedTextDocId.dart';
import '../../models/lsp/params/registrations.dart';
import '../../services/file.dart';
import '../../services/lsp/document.dart';
import '../file.dart';
import 'base.dart';
import 'capabilities.dart';

part 'document.g.dart';

/// A feature specific provider made for the LSPService specific functionalities
/// Dart LPS document syncKind with the server is 2 (Incremental).
/// Meaning documents are synced by sending the full content on open.
/// After that only incremental updates to the document are sent.
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
    FileService fileService = ref.watch(fileServiceProvider(filePath));
    _fileExtension = fileService.extension;
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
    if (lspService != null) {
      return DocumentSynchronization(lspService);
    }
    return null;
  }

  Future<Map<String, dynamic>?> textDocDidOpen() async {
    if (state.hasValue && state.requireValue != null) {
      TextDocItem textDocItem = TextDocItem(
          uri: _uri, languageId: _languageId, text: _text, version: _version);
      return state.requireValue!.textDocDidOpen(textDocItem);
    }
    return null;
  }

  Future<Map<String, dynamic>?> textDocDidChange(String text,
      {int? startLine, int? startChar, int? endLine, int? endChar}) async {
    /// Dart LPS document syncKind with the server is 2 (Incremental).

    if (state.hasValue) {
      ClientRegistrations? docDidChangeCapability = ref
          .read(lSPClientCapabilitiesProvider.notifier)
          .getMethodCapability(DocumentSynchronization.mTextDocDidChange);

      if (docDidChangeCapability != null &&
          docDidChangeCapability.registerOptions != null) {
        // The version number points to the version after all provided content
        // changes have been applied.
        _version++;
        VersionedTextDocId versionedTextDocId =
            VersionedTextDocId(uri: _uri, version: _version);

        if (docDidChangeCapability.registerOptions!.syncKind == 1) {
          /// 1 - Full: Documents are synced by always sending the full content
          /// of the document.

          // An event describing a change to a text document.
          // If only a text is provided it is considered to be the full content
          // of the document.
          _text = text;
          List<TextDocContentChange> contentChanges = [
            TextDocContentChange(text: _text)
          ];

          return state.requireValue!
              .textDocDidChange(versionedTextDocId, contentChanges);
        } else if (docDidChangeCapability.registerOptions!.syncKind == 2) {
          /// 2 - Incremental:  Documents are synced by sending the full content on open.
          /// After that only incremental updates to the document are sent.

          Range? range = calculateTextChangeRange(_text, text);
          _text = text;

          // An event describing a change to a text document.
          List<TextDocContentChange> contentChanges = [
            TextDocContentChange(text: text, range: range)
          ];

          return state.requireValue!
              .textDocDidChange(versionedTextDocId, contentChanges);
        } else {
          /// 0 - None: Documents should not be synced at all.
        }
      }
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

Range? calculateTextChangeRange(String oldText, String newText) {
  /*
    A range in a text document expressed as (zero-based) start and end positions.
    A range is comparable to a selection in an editor.
    Therefore, the end position is exclusive.
    If you want to specify a range that contains a line including the line ending character(s)
    then use an end position denoting the start of the next line.
     */

  final dmp = DiffMatchPatch();

  // Compute the list of diffs between oldText and newText
  final diffs = dmp.diff(oldText, newText);

  // Initialize counters for lines and characters for both old and new texts
  int lineCountOld = 0;
  int lineCountNew = 0;
  int charCountOld = 0;
  int charCountNew = 0;

  // These will hold the starting and ending positions of detected changes
  Position? start;
  Position? end;

  // Iterate over each diff block to pinpoint changes
  for (Diff diff in diffs) {
    // If the diff block represents deletion or equality, count lines and characters in oldText
    if (diff.operation != DIFF_INSERT) {
      for (int i = 0; i < diff.text.length; i++) {
        if (diff.text[i] == '\n') {
          lineCountOld++;
          charCountOld = 0;
        } else {
          charCountOld++;
        }
      }
    }

    // If the diff block represents insertion or equality, count lines and characters in newText
    if (diff.operation != DIFF_DELETE) {
      for (int i = 0; i < diff.text.length; i++) {
        if (diff.text[i] == '\n') {
          lineCountNew++;
          charCountNew = 0;
        } else {
          charCountNew++;
        }
      }
    }

    // If we detect a change and haven't set the starting position, set it now
    if (start == null && diff.operation != DIFF_EQUAL) {
      start = Position(line: lineCountOld, character: charCountOld);
    }

    // Keep updating the ending position with every detected change
    if (diff.operation != DIFF_EQUAL) {
      end = Position(line: lineCountNew, character: charCountNew);
    }
  }

  // If we detected changes and captured the starting and ending positions, return them as a Range
  if (start != null && end != null) {
    return Range(start: start, end: end);
  } else {
    return null; // No detected changes
  }
}
