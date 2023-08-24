import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:quinine/services/lsp/buffer.dart';

import '../../data/lsp.dart';

void main() {
  group('LSPBuffer unit tests', () {
    final LSPBuffer lspBuffer = LSPBuffer();

    List<List<int>> encodedBytesStreamLSP =
        lspOutputChunkingTestData.map((str) => utf8.encode(str)).toList();

    for (var lspStream in encodedBytesStreamLSP) {
      lspBuffer.feed(lspStream);

      while (true) {
        var response = lspBuffer.process();
        if (response == null) {
          break;
        }

        test(
          'Unit test LSPBuffer message buffering and decoding',
          () {
            expect(response, isA<Map<String, dynamic>>());
            expect(response, isNotNull);
          },
        );
      }
    }
  });
}
