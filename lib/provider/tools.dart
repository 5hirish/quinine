import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tools.g.dart';

@riverpod
class CoreToolBarState extends _$CoreToolBarState {
  @override
  int? build() {
    return 0;
  }

  void toggleTool(int index) {
    if (state != index) {
      state = index;
    } else {
      state = null;
    }
  }
}

@riverpod
class ToolWindowWeight extends _$ToolWindowWeight {
  @override
  double? build() {
    return 0.1;
  }

  void setWeight(double? weight) {
    state = weight;
  }

  double? getWeight() {
    return state;
  }
}
