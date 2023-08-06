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
];
