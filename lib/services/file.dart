import 'dart:io';

class FileService {
  final String _filePath;

  const FileService(String filePath) : _filePath = filePath;

  String get path => _filePath;
  String get extension => _filePath.split('.').last;
  String get name => _filePath.split('/').last;

  String getFilePathExtension() {
    return _filePath.split('.').last;
  }

  String getFilePathName() {
    return _filePath.split('/').last;
  }

  Future<String> readFileContent() async {
    final file = File(_filePath);

    if (await file.exists()) {
      return file.readAsString();
    } else {
      throw Exception('File not found');
    }
  }

  Future<void> writeToFile(String fileContent) async {
    final file = File(_filePath);

    if (await file.exists()) {
      await file.writeAsString(fileContent);
    } else {
      throw Exception('File not found');
    }
  }
}
