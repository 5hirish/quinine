import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:code_text_field/code_text_field.dart' as lite;
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/highlight.dart';

lite.CodeController useCodeControllerLite({
  required String initialSource,
  required Mode language,
}) {
  final codeController = useState<lite.CodeController?>(null);

  useEffect(() {
    codeController.value = lite.CodeController(
      text: initialSource,
      language: language,
    );
    return () => codeController.value?.dispose();
  }, []);

  return codeController.value!;
}


CodeController useCodeController({
  required String initialSource,
  required Mode language,
  required AbstractAnalyzer analyzer,
}) {
  final codeController = useState<CodeController?>(null);

  useEffect(() {
    codeController.value = CodeController(
      text: initialSource,
      language: language,
      analyzer: analyzer,
    );
    return () => codeController.value?.dispose();
  }, []);

  return codeController.value!;
}
