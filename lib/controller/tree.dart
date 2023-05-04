
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class CustomTreeController<T extends Object> extends TreeController<T> {
  CustomTreeController({
    required Iterable<T> roots,
    required Iterable<T> Function(T parent) childrenProvider,
    required this.expandedNodes,
  }) : super(
    roots: roots,
    childrenProvider: childrenProvider
  );

  final Set<T> expandedNodes;

  @override
  bool getExpansionState(T node) {
    return expandedNodes.contains(node);
  }

  @override
  void setExpansionState(T node, bool expanded) {
    if (expanded) {
      expandedNodes.add(node);
    } else {
      expandedNodes.remove(node);
    }
  }
}