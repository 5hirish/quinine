const counterProviderMaterialApp = '''
// A Counter implemented and tested using Flutter
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// We declared a provider globally, and we will use it in two tests, to see
// if the state correctly resets to `0` between tests.

final counterProvider = StateProvider((ref) => 0);

// Renders the current state and a button that allows incrementing the state
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer(builder: (context, ref, _) {
        final counter = ref.watch(counterProvider);
        return ElevatedButton(
          onPressed: () => ref.read(counterProvider.notifier).state++,
          child: Text('\$counter'),
        );
      }),
    );
  }
}

void main(){
  runApp(
    const ProviderScope(
      child: MyApp()
    )
  );
}
''';