import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:multi_split_view/multi_split_view.dart';

MultiSplitViewController useMultiSplitViewController() {
  final controller = useState<MultiSplitViewController>(
      MultiSplitViewController()
  );
  return controller.value;
}
