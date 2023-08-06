import 'dart:convert';

/// ref: https://github.com/dart-lang/sdk/blob/main/pkg/analysis_server/lib/src/lsp/lsp_packet_transformer.dart

class LSPBuffer {
  // The buffer that stores the incoming data
  StringBuffer buffer = StringBuffer();

  // The expected length of the message body as indicated by the Content-Length header
  int? expectedLength;

  // The index where the headers end and the message body begins
  int? headersEnd;

  bool hasExpectedEncoding = false;

  // Adds data to the buffer
  void feed(String data) {
    buffer.write(data);
  }

  dynamic process() {
    var bufferString = buffer.toString();

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
          // Parse the length from the header
          expectedLength = int.tryParse(h.split(':')[1].trim());
        } else if (h.toLowerCase().startsWith('content-type:')) {
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

    int messageStart = headersEnd! + 4;
    int messageLength = headersEnd! + 4 + expectedLength!;
    if (bufferString.length < messageLength) {
      // If we haven't received all the data yet (as indicated by the Content-Length header), return null
      return null;
    }

    // Extract the message body from the buffer
    var rawMessage = bufferString.substring(messageStart, messageLength);

    // Decode the JSON message body
    var message = json.decode(rawMessage);

    // Remove the processed message from the buffer and reset the variables for the next message
    buffer = StringBuffer(bufferString.substring(messageLength));
    expectedLength = null;
    headersEnd = null;

    // Return the decoded message
    return message;
  }
}
