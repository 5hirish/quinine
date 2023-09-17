import 'package:flutter_test/flutter_test.dart';
import 'package:quinine/models/lsp/params/document/range.dart';
import 'package:quinine/provider/lsp/document.dart';

void main() {
  group('LSP Document Synchronizer Text Range tests', () {
    test('No change in texts', () {
      const oldText = 'This is a sample text.';
      const newText = 'This is a sample text.';
      expect(calculateTextChangeRange(oldText, newText), isNull);
    });

    test('Text insertion', () {
      const oldText = 'Hello there.';
      const newText = 'Hello, there.';
      const expectedRange = Range(
          start: Position(line: 0, character: 5),
          end: Position(line: 0, character: 6));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('Text deletion', () {
      const oldText = 'Hello, there.';
      const newText = 'Hello there.';
      const expectedRange = Range(
          start: Position(line: 0, character: 5),
          end: Position(line: 0, character: 5));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('Changes across multiple lines', () {
      const oldText = 'Hello,\nHow are you?';
      const newText = 'Hello,\nHow have you been?';
      const expectedRange = Range(
          start: Position(line: 1, character: 4),
          end: Position(line: 1, character: 17));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('Multiple changes', () {
      const oldText = 'Hello, there.\nHow are you?';
      const newText = 'Hello there.\nHow have you been?';
      const expectedRange = Range(
          start: Position(line: 0, character: 5),
          end: Position(line: 1, character: 17));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('Insertion at the end', () {
      const oldText = 'Hello';
      const newText = 'Hello, friend.';
      const expectedRange = Range(
          start: Position(line: 0, character: 5),
          end: Position(line: 0, character: 13));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('Both texts are empty', () {
      const oldText = '';
      const newText = '';
      expect(calculateTextChangeRange(oldText, newText), isNull);
    });

    test('Old text is empty', () {
      const oldText = '';
      const newText = 'Some content.';
      const expectedRange = Range(
          start: Position(line: 0, character: 0),
          end: Position(line: 0, character: 12));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });

    test('New text is empty', () {
      const oldText = 'Some content.';
      const newText = '';
      const expectedRange = Range(
          start: Position(line: 0, character: 0),
          end: Position(line: 0, character: 0));
      expect(calculateTextChangeRange(oldText, newText), expectedRange);
    });
  });
}
