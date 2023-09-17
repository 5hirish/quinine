import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:code_text_field/code_text_field.dart' as lite;
import 'package:flutter_code_editor/flutter_code_editor.dart';

import '../../hooks/code.dart';
import '../../intents/file.dart';
import '../../keys/activators.dart';
import '../../logger.dart';
import '../../models/theme.dart';
import '../../provider/code.dart';
import '../../provider/lsp/document.dart';
import '../../provider/theme.dart';
import '../../services/file.dart';
import '../../utils/action_logger.dart';
import '../../utils/shortcut_logger.dart';
import '../../models/utils/ext.dart';

class CodeEditor extends HookConsumerWidget {
  const CodeEditor({super.key, required this.filePath});

  final String filePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (filePath.isEmpty) {
      return const Center(child: Text('No file selected'));
    }

    final codeStyle = ref.watch(coreCodeThemeStateProvider);
    final sourceFile = ref.watch(sourceFileProvider(filePath: filePath));

    FileService fileService = FileService(filePath);
    String fileExtension = fileService.getFilePathExtension();

    final language = languageFromExtension(
        fileExtension); // https://github.com/dart-lang/dart-pad

    final focusNode = useFocusNode();
    final codeController = useCodeController(
      initialSource: '',
      language: language,
      analyzer: const DefaultLocalAnalyzer(),
    );
    //Todo: Replace with the LSP server: open the LSP file

    logger.d("File Ext: $fileExtension");

    useEffect(() {
      focusNode.addListener(() {
        if (!focusNode.hasFocus) {
          logger.d("Code field lost focus. Must save file.");
          ref.read(sourceFileProvider(filePath: filePath).notifier).syncCode(
                codeContent: codeController.fullText,
                baseOffset: codeController.selection.baseOffset,
                extentOffset: codeController.selection.extentOffset,
              );
        }
      });

      codeController.addListener(() {
        // fullText: returns and sets the entire text,
        // including any folded blocks and hidden service comments
        String fullModifiedCode = codeController.fullText;

        int baseOffset = codeController.selection.baseOffset;
        int extentOffset = codeController.selection.extentOffset;

        ref
            .read(sourceFileProvider(filePath: filePath).notifier)
            .bufferModifiedCode(fullModifiedCode, baseOffset, extentOffset,
                updateState: false);
        logger.d("Modified Code");

        ref
            .read(lSPDocumentProvider(filePath).notifier)
            .textDocDidChange(fullModifiedCode);
      });

      return null;
    }, [focusNode, codeController]);

    return sourceFile.when(
      data: (sourceFile) {
        codeController.text = sourceFile.fullText;
        if (sourceFile.extentOffset > 0 &&
            sourceFile.extentOffset < sourceFile.fullText.length) {
          codeController.setCursor(sourceFile.extentOffset);
        }

        return getCodeEditor(ref, focusNode, codeController, codeStyle);
      },
      loading: () => const Center(
          child: SizedBox(width: 72, child: LinearProgressIndicator())),
      error: (err, stack) => Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Error reading file: ${err.toString()}")),
      ),
    );
  }

  Widget getCodeEditor(WidgetRef ref, FocusNode focusNode,
      CodeController codeController, CoreCodeTheme codeStyle) {
    return Shortcuts.manager(
      manager: LoggingShortcutManager(
        shortcuts: <ShortcutActivator, Intent>{
          KeyActivators.cmdS: const SaveFileIntent(),
        },
      ),
      // shortcuts: <ShortcutActivator, Intent>{
      //   KeyActivators.controlS: const SaveFileIntent(),
      // },
      child: Actions(
        dispatcher: LoggingActionDispatcher(),
        actions: <Type, Action<Intent>>{
          SaveFileIntent: SaveFileAction(ref, filePath),
        },
        child: Builder(builder: (context) {
          return CodeTheme(
            data: CodeThemeData(styles: codeStyle.style),
            child: CodeField(
              expands: true,
              focusNode: focusNode,
              controller: codeController,
              textStyle: TextStyle(
                  fontSize: codeStyle.fontSize,
                  fontFamily: codeStyle.fontFamily),
              // onChanged: (String value) {
              //
              // },
            ),
          );
        }),
      ),
    );
  }

  Widget getCodeEditorLite(
      lite.CodeController codeController, CoreCodeTheme codeStyle) {
    return lite.CodeTheme(
      data: lite.CodeThemeData(styles: codeStyle.style),
      child: lite.CodeField(
        expands: true,
        controller: codeController,
        textStyle: TextStyle(
            fontSize: codeStyle.fontSize, fontFamily: codeStyle.fontFamily),
      ),
    );
  }
}
