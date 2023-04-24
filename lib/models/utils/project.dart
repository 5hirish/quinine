import 'package:nanoid/nanoid.dart';

String generateProjectId({int idLen = 16}) {
  return nanoid(idLen);
}