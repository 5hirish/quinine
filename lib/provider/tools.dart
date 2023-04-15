import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tools.g.dart';

@riverpod
class CoreToolBarState extends _$CoreToolBarState {
  @override
  int? build() {
    return 0;
  }

  void toogleTool(int index) {
    if (state != index) {
      state = index;
    } else {
      state = null;
    }
  }
}
