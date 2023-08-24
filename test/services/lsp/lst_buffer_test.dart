import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:quinine/services/lsp/buffer.dart';

import '../../data/lsp.dart';

void main() {
  group('LSPBuffer mock tests', () {
    final LSPBuffer lspBuffer = LSPBuffer();

    List<List<int>> encodedBytesStreamLSP =
        lspOutputChunkingTestData.map((str) => utf8.encode(str)).toList();

    test(
      'mock test LSPBuffer message buffering and decoding',
      () async {
        int parsedMessages = 0;

        for (var lspStream in encodedBytesStreamLSP) {
          lspBuffer.feed(lspStream);

          while (true) {
            var response = lspBuffer.process();
            if (response == null) {
              break;
            }
            expect(response, isA<Map<String, dynamic>>());
            expect(response, isNotNull);
            parsedMessages += 1;
          }
        }

        expect(parsedMessages, 9);
      },
    );
  });
}
