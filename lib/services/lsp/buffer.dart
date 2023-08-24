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
  List<int> buffer = [];

  // The expected length of the message body as indicated by the Content-Length header
  int? expectedLength;

  // The index where the headers end and the message body begins
  int? headersEnd;

  bool hasExpectedEncoding = false;

  // Adds data to the buffer
  void feed(List<int> data) {
    buffer.addAll(data);
  }

  dynamic process() {
    var bufferData = Uint8List.fromList(buffer);
    var bufferString = utf8.decode(bufferData);

    if (headersEnd == null || headersEnd == -1) {
      // Try to find the end of the headers
      headersEnd = bufferString.indexOf('\r\n\r\n');
      if (headersEnd == -1) {
        // If we haven't received all the headers yet, return null
        return null;
      }
    }

    if (expectedLength == null) {
      // Try to find the Content-Length header among the received headers
      var headers = bufferString.substring(0, headersEnd!).split('\r\n');
      for (var h in headers) {
        if (h.toLowerCase().startsWith('content-length:')) {
          // Parse the length of content.
          // Length is in bytes for UTF-8 encoding.
          expectedLength = int.tryParse(h.split(':')[1].trim());
        } else if (h.toLowerCase().startsWith('content-type:')) {
          // UTF-8 is a variable-length encoding for Unicode characters.
          // This means that characters can take anywhere from one to four bytes
          hasExpectedEncoding = h.toLowerCase().contains('utf-8');
        }

        if (expectedLength != null && hasExpectedEncoding) {
          break;
        }
      }
      if (expectedLength == null) {
        // If the Content-Length header was not found, throw an error
        throw const FormatException("Missing Content-Length header");
      }

      if (!hasExpectedEncoding) {
        throw const FormatException("Missing UTF-8 encoding");
      }
    }

    int messageStartBytes = bufferData
            .sublist(0, headersEnd!)
            .indexOf(Uint8List.fromList([13, 10, 13, 10]) as int) +
        4; // find '\r\n\r\n'
    int messageEndBytes = messageStartBytes + expectedLength!;

    if (buffer.length < messageEndBytes) {
      // If we haven't received all the data yet (as indicated by the Content-Length header), return null
      return null;
    }

    // int messageStart = headersEnd! + 4;
    // int messageLength = messageStart + expectedLength!;
    // if (bufferString.length < messageLength) {
    //   // If we haven't received all the data yet (as indicated by the Content-Length header), return null
    //   return null;
    // }

    // Extract the message body from the buffer
    var messageBytes = bufferData.sublist(messageStartBytes, messageEndBytes);
    // var rawMessage = bufferString.substring(messageStart, messageLength);

    // Decode the JSON message body
    var messageString = utf8.decode(messageBytes);
    var message = json.decode(messageString);

    // Remove the processed message from the buffer and reset the variables for the next message
    buffer = bufferData.sublist(messageEndBytes).toList();
    expectedLength = null;
    headersEnd = null;

    // Return the decoded message
    return message;
  }
}
