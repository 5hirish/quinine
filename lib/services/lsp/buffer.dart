import 'dart:convert';
import 'dart:typed_data';

/// ref: https://github.com/dart-lang/sdk/blob/main/pkg/analysis_server/lib/src/lsp/lsp_packet_transformer.dart

/*
 * The base protocol consists of a header and a content part (comparable to HTTP).
 * The header and content part are separated by a ‘\r\n’.
 * The header part consists of header fields.
 * Each header field is terminated by ‘\r\n’.
 * Considering the last header field and the overall header itself are each
 * terminated with ‘\r\n’, and that at least one header is mandatory,
 * this means that two ‘\r\n’ sequences always immediately precede
 * the content part of a message.
 * The header part is encoded using the ‘ascii’ encoding.
 * This includes the ‘\r\n’ separating the header and content part.
 */

class LSPBuffer {
  // The buffer that stores the incoming data
  final BytesBuilder buffer = BytesBuilder();

  // Each header field is terminated by ‘\r\n’ &
  // The header and content part are separated by a ‘\r\n’
  // Hence the '\r\n\r\n' precedes the content part of a message
  final RegExp headerEndPattern = RegExp(r'\r\n\r\n');

  final String expectedEncoding = 'utf-8';

  // The expected length of the message body
  // as indicated by the Content-Length header
  int expectedContentLength = 0;

  // The index where the headers end and the message body begins
  int? headersEndIdx;

  bool hasExpectedEncoding = false;

  // Adds data to the buffer
  void feed(List<int> byteList) {
    buffer.add(byteList);
  }

  Map<String, dynamic>? process() {
    List<int> byteList = buffer.toBytes();
    String bufferString = utf8.decode(byteList, allowMalformed: true);

    // Try to find the end of the headers
    RegExpMatch? headerEndMatch = headerEndPattern.firstMatch(bufferString);
    if (headerEndMatch != null) {
      headersEndIdx = headerEndMatch.start;
      List<String> headers =
          bufferString.substring(0, headersEndIdx).split('\r\n');

      // UTF-8 is a variable-length encoding for Unicode characters.
      // This means that characters can take anywhere from one to four bytes
      hasExpectedEncoding = headers
          .firstWhere(
            (h) => h.toLowerCase().startsWith('content-type:'),
            orElse: () => '',
          )
          .toLowerCase()
          .trim()
          .contains(expectedEncoding);

      if (!hasExpectedEncoding) {
        throw const FormatException("Missing UTF-8 encoding");
      }

      // Try to find the Content-Length header among the received headers
      String contentLengthStr = headers
          .firstWhere(
            (h) => h.toLowerCase().startsWith('content-length:'),
            orElse: () => 'content-length: -1',
          )
          .split(':')
          .last
          .trim();

      // Parse the length of content. Length is in bytes for UTF-8 encoding.
      expectedContentLength = int.parse(contentLengthStr);

      if (expectedContentLength < 0) {
        // If the Content-Length header was not found, throw an error
        throw const FormatException("Missing Content-Length header");
      }

      var messageStart = headerEndMatch.end;
      var messageEnd = messageStart + expectedContentLength;

      if (buffer.length < messageEnd) {
        // If we haven't received all the data yet
        // (as indicated by the Content-Length header), return null
        return null;
      }

      // Extract the message body from the byte buffer
      var messageBytes = byteList.sublist(messageStart, messageEnd);
      // Decode the JSON message body
      var messageString = utf8.decode(messageBytes);
      var message = jsonDecode(messageString) as Map<String, dynamic>;

      // Remove the processed message from the buffer and
      // reset the variables for the next message
      buffer.clear();
      List<int> remainderByteList = byteList.sublist(messageEnd).toList();
      buffer.add(remainderByteList);
      expectedContentLength = -1;
      headersEndIdx = null;

      return message;
    }
    return null;
  }
}
