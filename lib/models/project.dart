import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';


@freezed
class ProjectLocal with _$ProjectLocal {

  const factory ProjectLocal({
    required String directoryPath,
    Directory? directory,
    Map<String, List<FileSystemEntity>>? projectFiles,
  }) = _ProjectLocal;
}


