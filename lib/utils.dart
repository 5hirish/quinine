import 'dart:io';

import 'package:intl/intl.dart';

String getFileName(FileSystemEntity file) {
  return file.path.split('/').last;
}

String getFileExtension(FileSystemEntity file) {
  return file.path.split('.').last;
}

String getCurrentLocale() {
  return Intl.getCurrentLocale();
}
