import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CoreAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CoreAppBar({super.key, required this.title});

  final String title;
  final double coreAppBarHeight = 56.0;
  final double coreAppBarIconSize = 12.0;
  final double coreAppBarFontSize = 12.0;

  @override
  Size get preferredSize => Size.fromHeight(coreAppBarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: coreAppBarFontSize)),
      actions: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.play, size: coreAppBarIconSize),
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.bug, size: coreAppBarIconSize),
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.gauge, size: coreAppBarIconSize),
          onPressed: () {},
        ),
      ],
    );
  }
}
