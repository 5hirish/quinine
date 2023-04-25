import 'dart:io';

String getFileName(FileSystemEntity file) {
  return file.path.split('/').last;
}

String getFileExtension(FileSystemEntity file) {
  return file.path.split('.').last;
}