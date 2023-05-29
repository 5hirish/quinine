// ignore_for_file: avoid_dynamic_calls
import 'dart:convert';

import 'package:flutter_code_editor/flutter_code_editor.dart';

/// ref: https://github.com/akvelon/flutter-code-editor/blob/main/lib/src/analyzer/dartpad_analyzer.dart

class DartLSPAnalyzer extends AbstractAnalyzer {
  static const _url =
      'https://stable.api.dartpad.dev/api/dartservices/v2/analyze';

  @override
  Future<AnalysisResult> analyze(Code code) async {
    final client = http.Client();

    final response = await client.post(
      Uri.parse(_url),
      body: json.encode({
        'source': code.text,
      }),
      encoding: utf8,
    );

    final decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    final issueMaps = decodedResponse['issues'];

    if (issueMaps is! Iterable || (issueMaps.isEmpty)) {
      return const AnalysisResult(issues: []);
    }

    final issues = issueMaps
        .cast<Map<String, dynamic>>()
        .map(issueFromJson)
        .toList(growable: false);
    return AnalysisResult(issues: issues);
  }
}

// Converts json to Issue object for the DartAnalyzer.
Issue issueFromJson(Map<String, dynamic> json) {
  final type = mapIssueType(json['kind']);
  return Issue(
    line: json['line'] - 1,
    message: json['message'],
    suggestion: json['correction'],
    type: type,
    url: json['url'],
  );
}

IssueType mapIssueType(String type) {
  switch (type) {
    case 'error':
      return IssueType.error;
    case 'warning':
      return IssueType.warning;
    case 'info':
      return IssueType.info;
    default:
      return IssueType.warning;
  }
}
