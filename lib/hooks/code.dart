import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:code_text_field/code_text_field.dart';

import 'package:highlight/highlight.dart';

CodeController useCodeController({
  required String initialSource,
  required Mode language,
}) {
  final codeController = useState<CodeController?>(null);

  useEffect(() {
    codeController.value = CodeController(
      text: initialSource,
      language: language,
    );
    return () => codeController.value?.dispose();
  }, []);

  return codeController.value!;
}
