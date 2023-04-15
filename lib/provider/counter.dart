import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

@riverpod
class CounterState extends _$CounterState {
  @override
  int build() {
    return 0;
  }

  void incrementCounter() {
    state = state + 1;
  }
}
