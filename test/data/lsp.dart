List<String> lspOutputChunkingTestData = [
  'Content-Length: 99\r\n',
  'Content-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n',
  '{"id":1,"jsonrpc":"2.0","method":"workspace/configuration","params":{"items":[{"section":"dart"}]}}Content-Length: 38\r\nContent-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":2,"jsonrpc":"2.0","result":null}',

  'Content-Length: 38\r\nContent-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":3,"jsonrpc":"2.0","result":null}',

  'Content-Length: 38\r\nContent-Type: ',
  'application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":4,"jsonrpc":"2.0","result":null}',

  'Content-Length: 38\r\nContent-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":5,"jsonrpc":"2.0",',
  '"result":null}Content-Length: 38\r\n',

  'Content-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":6,"jsonrpc":"2.0","result":null}',

  // Using an accented character "é" which takes 2 bytes in UTF-8.
  'Content-Length: 39\r\n',
  'Content-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n',
  '{"id":7,"jsonrpc":"2.0","résult":null}',

  // Using a Chinese character "中" which takes 3 bytes in UTF-8.
  'Content-Length: 41\r\nContent-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":8,"jsonrpc":"2.0","中result":null}',

  // Using an emoji "🙂" which takes 4 bytes in UTF-8.
  'Content-Length: 40\r\nContent-Type: application/vscode-jsonrpc; charset=utf-8\r\n\r\n{"id":9,"jsonrpc":"2.0","result":"🙂"}',
];
