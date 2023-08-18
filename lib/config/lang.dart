import '../models/utils/ext.dart';

final Map<String, LSPLanguage> supportedExtLangIdMap = {
  FileExtension.dart.name: LSPLanguage.dart,
  // add more languages here as support for LSP increases
};

LSPLanguage? lspLangIdFromExt(String ext) {
  return supportedExtLangIdMap[ext];
}

// ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocumentItem
enum LSPLanguage {
  abap,
  bat,
  bibtex,
  clojure,
  coffeescript,
  c,
  cpp,
  csharp,
  css,
  diff,
  dart,
  dockerfile,
  elixir,
  erlang,
  fsharp,
  git_commit,
  git_rebase,
  go,
  groovy,
  handlebars,
  html,
  ini,
  java,
  javascript,
  javascriptreact,
  json,
  latex,
  less,
  lua,
  makefile,
  markdown,
  objective_c,
  objective_cpp,
  perl,
  perl6,
  php,
  powershell,
  jade,
  python,
  r,
  razor,
  ruby,
  rust,
  scss,
  sass,
  scala,
  shaderlab,
  shellscript,
  sql,
  swift,
  typescript,
  typescriptreact,
  tex,
  vb,
  xml,
  xsl,
  yaml
}

extension LSPLanguagesExt on LSPLanguage {
  String get name {
    return toString().split('.').last.replaceAll('_', '-');
  }

  bool get isSupported {
    return supportedExtLangIdMap.containsKey(name);
  }
}
