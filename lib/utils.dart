import 'dart:io';

String getFileName(FileSystemEntity file) {
  return file.path.split('/').last;
}

String getFileExtension(FileSystemEntity file) {
  return file.path.split('.').last;
}

String getFilePathExtension(String filePath) {
  return filePath.split('.').last;
}

Future<String> readFileContent(String filePath) async {
  final file = File(filePath);

  if (await file.exists()) {
    return file.readAsString();
  } else {
    throw Exception('File not found');
  }
}
