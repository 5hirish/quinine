import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/code.dart';

class SaveFileIntent extends Intent {
  const SaveFileIntent();
}

/// An action that is bound to SaveFileAction that saves the file to disk.
class SaveFileAction extends Action<SaveFileIntent> {
  SaveFileAction(this.ref, this.filePath);

  final WidgetRef ref;
  final String filePath;

  @override
  Object? invoke(covariant SaveFileIntent intent) {
    ref.read(sourceFileProvider(filePath: filePath).notifier).syncCode();

    return null;
  }
}
