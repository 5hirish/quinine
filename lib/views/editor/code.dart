import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:code_text_field/code_text_field.dart' as lite;
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/dart.dart';


import '../../hooks/code.dart';
import '../../logger.dart';
import '../../models/theme.dart';
import '../../provider/theme.dart';
import '../../utils.dart';
import '../lang/ext.dart';

class CodeEditor extends HookConsumerWidget {
  const CodeEditor({super.key, required this.filePath});

  final String filePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final codeStyle = ref.watch(coreCodeThemeStateProvider);
    final isLoading = useState<bool>(true);
    final errorMsg = useState<String>("");

    String fileExtension = getFilePathExtension(filePath);
    final language = languageFromExtension(fileExtension);

    if (filePath.isEmpty) {
      return const Center(child: Text('No file selected'));
    }

    // https://github.com/dart-lang/dart-pad
    final codeController = useCodeController(
      initialSource: '',
      language: language,
      analyzer: language == dart ? DartPadAnalyzer() : const DefaultLocalAnalyzer(),
    );

    // logger.d("File Ext: $fileExtension");

    useEffect(() {
      errorMsg.value = "";
      isLoading.value = true;
      readFileContent(filePath).then((content) {
        codeController.text = content;
      }).catchError((error) {
        logger.e(error);
        errorMsg.value = error.toString();
      }).whenComplete(() => isLoading.value = false);
      return null;
    }, [filePath]);

    return isLoading.value?
      const Center(
          child: SizedBox(width: 72, child: LinearProgressIndicator())
      ): errorMsg.value.isEmpty? getCodeEditor(codeController, codeStyle): Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Error reading file: ${errorMsg.value}")
      ),
    );
  }

  Widget getCodeEditor(CodeController codeController, CoreCodeTheme codeStyle) {
    return CodeTheme(
      data: CodeThemeData(styles: codeStyle.style),
      child: CodeField(
        expands: true,
        controller: codeController,
        textStyle: TextStyle(
            fontSize: codeStyle.fontSize,
            fontFamily: codeStyle.fontFamily
        ),
      ),
    );
  }

  Widget getCodeEditorLite(lite.CodeController codeController, CoreCodeTheme codeStyle) {
    return lite.CodeTheme(
      data: lite.CodeThemeData(styles: codeStyle.style),
      child: lite.CodeField(
        expands: true,
        controller: codeController,
        textStyle: TextStyle(
            fontSize: codeStyle.fontSize,
            fontFamily: codeStyle.fontFamily
        ),
      ),
    );
  }
}





