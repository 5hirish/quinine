import 'package:highlight/highlight.dart';

// Import the languages
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/yaml.dart';
import 'package:highlight/languages/markdown.dart';
import 'package:highlight/languages/cpp.dart';
import 'package:highlight/languages/json.dart';
import 'package:highlight/languages/xml.dart';
import 'package:highlight/languages/swift.dart';
import 'package:highlight/languages/plaintext.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/languages/cmake.dart';
import 'package:highlight/languages/javascript.dart';
import 'package:highlight/languages/ruby.dart';
import 'package:highlight/languages/css.dart';
import 'package:highlight/languages/gradle.dart';
import 'package:highlight/languages/java.dart';
import 'package:highlight/languages/kotlin.dart';
import 'package:highlight/languages/properties.dart';
import 'package:highlight/languages/shell.dart';


Mode languageFromExtension(String extension) {
  // ref: https://github.com/git-touch/highlight.dart/tree/master/highlight/lib/languages

  switch (extension) {
    case 'dart':
      return dart;

    case 'py':
      return python;

    case 'js':
      return javascript;
    case 'css':
      return css;

    case 'java':
      return java;
    case 'kt':
      return kotlin;
    case 'gradle':
      return gradle;

    case 'swift':
      return swift;

    case 'cpp':
    case 'h':
    case 'c':
      return cpp;

    case 'ruby':
    case 'pod':
    case 'lock':
      return ruby;

    case 'html':
    case 'xml':
    case 'plist':
    case 'iml':
    case 'xcscheme':
    case 'xcworkspacedata':
    case 'xcodeproj':
    case 'pbxproj':
    case 'xcconfig':
    case 'xcsettings':
    case 'storyboard':
      return xml;

    case 'txt':
    case 'gitignore':
    case 'license':
    case 'metadata':
      return plaintext;

    case 'cmake':
      return cmake;

    case 'json':
    case 'arb':
    case 'firebaserc':
      return json;

    case 'yaml':
      return yaml;

    case 'md':
      return markdown;

    case 'sh':
      return shell;

    case 'properties':
      return properties;

  // ... Add cases for other languages you want to support

    default:
      return plaintext; // Default language if no match is found
  }
}