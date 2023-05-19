import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../collections/buffer/code.dart';

part 'datastore.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> datastore(DatastoreRef ref) async {
  List<CollectionSchema<dynamic>> collectionSchema = [CodeTextSchema];

  Directory appDocDir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    collectionSchema,
    directory: appDocDir.path,
  );
  return isar;
}
