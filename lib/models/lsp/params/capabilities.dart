import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'registrations.dart';

part 'capabilities.freezed.dart';
part 'capabilities.g.dart';

ClientCapabilities clientCapabilitiesFromJson(String str) =>
    ClientCapabilities.fromJson(json.decode(str));

String clientCapabilitiesToJson(ClientCapabilities data) =>
    json.encode(data.toJson());

@freezed
class ClientCapabilities with _$ClientCapabilities {
  const factory ClientCapabilities({
    required List<ClientRegistrations>? unregisterations,
    required List<ClientRegistrations>? registrations,
  }) = _ClientCapabilities;

  factory ClientCapabilities.fromJson(Map<String, dynamic> json) =>
      _$ClientCapabilitiesFromJson(json);
}

Map<String, dynamic> clientCapabilitiesMap = {
  "workspace": {
    "applyEdit": true,
    "workspaceEdit": {
      "documentChanges": true,
      "resourceOperations": ["create", "rename", "delete"],
      "failureHandling": "textOnlyTransactional",
      "normalizesLineEndings": true,
      "changeAnnotationSupport": {"groupsOnLabel": true}
    },
    "configuration": true,
    "didChangeWatchedFiles": {
      "dynamicRegistration": true,
      "relativePatternSupport": true
    },
    "symbol": {
      "dynamicRegistration": true,
      "symbolKind": {
        "valueSet": [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14,
          15,
          16,
          17,
          18,
          19,
          20,
          21,
          22,
          23,
          24,
          25,
          26
        ]
      },
      "tagSupport": {
        "valueSet": [1]
      },
      "resolveSupport": {
        "properties": ["location.range"]
      }
    },
    "codeLens": {"refreshSupport": true},
    "executeCommand": {"dynamicRegistration": true},
    "didChangeConfiguration": {"dynamicRegistration": true},
    "workspaceFolders": true,
    "semanticTokens": {"refreshSupport": true},
    "fileOperations": {
      "dynamicRegistration": true,
      "didCreate": true,
      "didRename": true,
      "didDelete": true,
      "willCreate": true,
      "willRename": true,
      "willDelete": true
    },
    "inlineValue": {"refreshSupport": true},
    "inlayHint": {"refreshSupport": true},
    "diagnostics": {"refreshSupport": true}
  },
  "textDocument": {
    "publishDiagnostics": {
      "relatedInformation": true,
      "versionSupport": false,
      "tagSupport": {
        "valueSet": [1, 2]
      },
      "codeDescriptionSupport": true,
      "dataSupport": true
    },
    "synchronization": {
      "dynamicRegistration": true,
      "willSave": true,
      "willSaveWaitUntil": true,
      "didSave": true
    },
    "completion": {
      "dynamicRegistration": true,
      "contextSupport": true,
      "completionItem": {
        "snippetSupport": true,
        "commitCharactersSupport": true,
        "documentationFormat": ["markdown", "plaintext"],
        "deprecatedSupport": true,
        "preselectSupport": true,
        "tagSupport": {
          "valueSet": [1]
        },
        "insertReplaceSupport": true,
        "resolveSupport": {
          "properties": ["documentation", "detail", "additionalTextEdits"]
        },
        "insertTextModeSupport": {
          "valueSet": [1, 2]
        },
        "labelDetailsSupport": true
      },
      "insertTextMode": 2,
      "completionItemKind": {
        "valueSet": [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14,
          15,
          16,
          17,
          18,
          19,
          20,
          21,
          22,
          23,
          24,
          25
        ]
      },
      "completionList": {
        "itemDefaults": [
          "commitCharacters",
          "editRange",
          "insertTextFormat",
          "insertTextMode"
        ]
      }
    },
    "hover": {
      "dynamicRegistration": true,
      "contentFormat": ["markdown", "plaintext"]
    },
    "signatureHelp": {
      "dynamicRegistration": true,
      "signatureInformation": {
        "documentationFormat": ["markdown", "plaintext"],
        "parameterInformation": {"labelOffsetSupport": true},
        "activeParameterSupport": true
      },
      "contextSupport": true
    },
    "definition": {"dynamicRegistration": true, "linkSupport": true},
    "references": {"dynamicRegistration": true},
    "documentHighlight": {"dynamicRegistration": true},
    "documentSymbol": {
      "dynamicRegistration": true,
      "symbolKind": {
        "valueSet": [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14,
          15,
          16,
          17,
          18,
          19,
          20,
          21,
          22,
          23,
          24,
          25,
          26
        ]
      },
      "hierarchicalDocumentSymbolSupport": true,
      "tagSupport": {
        "valueSet": [1]
      },
      "labelSupport": true
    },
    "codeAction": {
      "dynamicRegistration": true,
      "isPreferredSupport": true,
      "disabledSupport": true,
      "dataSupport": true,
      "resolveSupport": {
        "properties": ["edit"]
      },
      "codeActionLiteralSupport": {
        "codeActionKind": {
          "valueSet": [
            "",
            "quickfix",
            "refactor",
            "refactor.extract",
            "refactor.inline",
            "refactor.rewrite",
            "source",
            "source.organizeImports"
          ]
        }
      },
      "honorsChangeAnnotations": false
    },
    "codeLens": {"dynamicRegistration": true},
    "formatting": {"dynamicRegistration": true},
    "rangeFormatting": {"dynamicRegistration": true},
    "onTypeFormatting": {"dynamicRegistration": true},
    "rename": {
      "dynamicRegistration": true,
      "prepareSupport": true,
      "prepareSupportDefaultBehavior": 1,
      "honorsChangeAnnotations": true
    },
    "documentLink": {"dynamicRegistration": true, "tooltipSupport": true},
    "typeDefinition": {"dynamicRegistration": true, "linkSupport": true},
    "implementation": {"dynamicRegistration": true, "linkSupport": true},
    "colorProvider": {"dynamicRegistration": true},
    "foldingRange": {
      "dynamicRegistration": true,
      "rangeLimit": 5000,
      "lineFoldingOnly": true,
      "foldingRangeKind": {
        "valueSet": ["comment", "imports", "region"]
      },
      "foldingRange": {"collapsedText": false}
    },
    "declaration": {"dynamicRegistration": true, "linkSupport": true},
    "selectionRange": {"dynamicRegistration": true},
    "callHierarchy": {"dynamicRegistration": true},
    "semanticTokens": {
      "dynamicRegistration": true,
      "tokenTypes": [
        "namespace",
        "type",
        "class",
        "enum",
        "interface",
        "struct",
        "typeParameter",
        "parameter",
        "variable",
        "property",
        "enumMember",
        "event",
        "function",
        "method",
        "macro",
        "keyword",
        "modifier",
        "comment",
        "string",
        "number",
        "regexp",
        "operator",
        "decorator"
      ],
      "tokenModifiers": [
        "declaration",
        "definition",
        "readonly",
        "static",
        "deprecated",
        "abstract",
        "async",
        "modification",
        "documentation",
        "defaultLibrary"
      ],
      "formats": ["relative"],
      "requests": {
        "range": true,
        "full": {"delta": true}
      },
      "multilineTokenSupport": false,
      "overlappingTokenSupport": false,
      "serverCancelSupport": true,
      "augmentsSyntaxTokens": true
    },
    "linkedEditingRange": {"dynamicRegistration": true},
    "typeHierarchy": {"dynamicRegistration": true},
    "inlineValue": {"dynamicRegistration": true},
    "inlayHint": {
      "dynamicRegistration": true,
      "resolveSupport": {
        "properties": [
          "tooltip",
          "textEdits",
          "label.tooltip",
          "label.location",
          "label.command"
        ]
      }
    },
    "diagnostic": {"dynamicRegistration": true, "relatedDocumentSupport": false}
  },
  "window": {
    "showMessage": {
      "messageActionItem": {"additionalPropertiesSupport": true}
    },
    "showDocument": {"support": true},
    "workDoneProgress": true
  },
  "general": {
    "staleRequestSupport": {
      "cancel": true,
      "retryOnContentModified": [
        "textDocument/semanticTokens/full",
        "textDocument/semanticTokens/range",
        "textDocument/semanticTokens/full/delta"
      ]
    },
    "regularExpressions": {"engine": "ECMAScript", "version": "ES2020"},
    "markdown": {
      "parser": "marked",
      "version": "1.1.0",
      "allowedTags": [
        "ul",
        "li",
        "p",
        "code",
        "blockquote",
        "ol",
        "h1",
        "h2",
        "h3",
        "h4",
        "h5",
        "h6",
        "hr",
        "em",
        "pre",
        "table",
        "thead",
        "tbody",
        "tr",
        "th",
        "td",
        "div",
        "del",
        "a",
        "strong",
        "br",
        "img",
        "span"
      ]
    },
    "positionEncodings": ["utf-16"]
  },
  "notebookDocument": {
    "synchronization": {
      "dynamicRegistration": true,
      "executionSummarySupport": true
    }
  },
  "experimental": {
    "supportsWindowShowMessageRequest": true,
    "snippetTextEdit": true,
    "dartCodeAction": {
      "commandParameterSupport": {
        "supportedKinds": ["saveUri"]
      }
    }
  }
};

Map<String, dynamic> registerCapabilitiesMap = {
  "registrations": [
    {
      "id": "0",
      "method": "textDocument/didOpen",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"},
          {"language": "yaml", "pattern": "**/pubspec.yaml", "scheme": "file"},
          {
            "language": "yaml",
            "pattern": "**/analysis_options.yaml",
            "scheme": "file"
          },
          {
            "language": "yaml",
            "pattern": "**/lib/{fix_data.yaml,fix_data/**.yaml}",
            "scheme": "file"
          }
        ]
      }
    },
    {
      "id": "1",
      "method": "textDocument/didClose",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"},
          {"language": "yaml", "pattern": "**/pubspec.yaml", "scheme": "file"},
          {
            "language": "yaml",
            "pattern": "**/analysis_options.yaml",
            "scheme": "file"
          },
          {
            "language": "yaml",
            "pattern": "**/lib/{fix_data.yaml,fix_data/**.yaml}",
            "scheme": "file"
          }
        ]
      }
    },
    {
      "id": "2",
      "method": "textDocument/didChange",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"},
          {"language": "yaml", "pattern": "**/pubspec.yaml", "scheme": "file"},
          {
            "language": "yaml",
            "pattern": "**/analysis_options.yaml",
            "scheme": "file"
          },
          {
            "language": "yaml",
            "pattern": "**/lib/{fix_data.yaml,fix_data/**.yaml}",
            "scheme": "file"
          }
        ],
        "syncKind": 2
      }
    },
    {
      "id": "3",
      "method": "textDocument/completion",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "resolveProvider": true,
        "triggerCharacters": [".", "=", "(", "\$", "\"", "'", "{", "/", ":"]
      }
    },
    {
      "id": "4",
      "method": "textDocument/completion",
      "registerOptions": {
        "documentSelector": [
          {"language": "yaml", "pattern": "**/pubspec.yaml", "scheme": "file"},
          {
            "language": "yaml",
            "pattern": "**/analysis_options.yaml",
            "scheme": "file"
          },
          {
            "language": "yaml",
            "pattern": "**/lib/{fix_data.yaml,fix_data/**.yaml}",
            "scheme": "file"
          }
        ],
        "resolveProvider": true
      }
    },
    {
      "id": "5",
      "method": "textDocument/hover",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "6",
      "method": "textDocument/signatureHelp",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "retriggerCharacters": [","],
        "triggerCharacters": ["("]
      }
    },
    {
      "id": "7",
      "method": "textDocument/references",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "8",
      "method": "textDocument/documentHighlight",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "9",
      "method": "textDocument/documentSymbol",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "10",
      "method": "textDocument/documentColor",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "11",
      "method": "textDocument/formatting",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "12",
      "method": "textDocument/onTypeFormatting",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "firstTriggerCharacter": "}",
        "moreTriggerCharacter": [";"]
      }
    },
    {
      "id": "13",
      "method": "textDocument/rangeFormatting",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "14",
      "method": "textDocument/definition",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "15",
      "method": "textDocument/typeDefinition",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "16",
      "method": "textDocument/implementation",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "17",
      "method": "textDocument/codeAction",
      "registerOptions": {
        "codeActionKinds": [
          "source",
          "source.organizeImports",
          "source.fixAll",
          "source.sortMembers",
          "quickfix",
          "refactor"
        ],
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "18",
      "method": "textDocument/rename",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "prepareProvider": true
      }
    },
    {
      "id": "19",
      "method": "textDocument/foldingRange",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "20",
      "method": "workspace/willRenameFiles",
      "registerOptions": {
        "filters": [
          {
            "pattern": {"glob": "**/*.dart", "matches": "file"},
            "scheme": "file"
          },
          {
            "pattern": {"glob": "**/", "matches": "folder"},
            "scheme": "file"
          }
        ]
      }
    },
    {"id": "21", "method": "workspace/didChangeConfiguration"},
    {
      "id": "22",
      "method": "textDocument/selectionRange",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "23",
      "method": "textDocument/prepareCallHierarchy",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "24",
      "method": "textDocument/semanticTokens",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "full": {"delta": false},
        "legend": {
          "tokenModifiers": [
            "documentation",
            "constructor",
            "declaration",
            "importPrefix",
            "instance",
            "static",
            "escape",
            "annotation",
            "control",
            "label",
            "interpolation",
            "void"
          ],
          "tokenTypes": [
            "annotation",
            "keyword",
            "class",
            "comment",
            "method",
            "variable",
            "parameter",
            "enum",
            "enumMember",
            "type",
            "source",
            "property",
            "namespace",
            "boolean",
            "number",
            "string",
            "function",
            "typeParameter"
          ]
        },
        "range": true
      }
    },
    {
      "id": "25",
      "method": "textDocument/prepareTypeHierarchy",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ]
      }
    },
    {
      "id": "26",
      "method": "textDocument/inlayHint",
      "registerOptions": {
        "documentSelector": [
          {"language": "dart", "scheme": "file"}
        ],
        "resolveProvider": false
      }
    }
  ]
};
