import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quinine/provider/tools.dart';

class CoreToolBar extends ConsumerWidget {
  const CoreToolBar({super.key});

  final double groupAligment = -1.0; // -1.0 = top, 0.0 = center, 1.0 = bottom
  final double coreToolBarIconSize = 20;
  final NavigationRailLabelType labelType = NavigationRailLabelType.none;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toolBarIndex = ref.watch(coreToolBarStateProvider);

    return NavigationRail(
      selectedIndex: toolBarIndex,
      groupAlignment: groupAligment,
      onDestinationSelected: (int index) {
        ref.read(coreToolBarStateProvider.notifier).toogleTool(index);
      },
      labelType: labelType,
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 24.0, top: 8.0),
        child: FloatingActionButton.small(
          elevation: 0,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
        ),
      ),
      trailing: Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: IconButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              icon: FaIcon(FontAwesomeIcons.gear,
                  size: coreToolBarIconSize,
                  color: Theme.of(context).iconTheme.color!.withOpacity(0.5)),
            ),
          ),
        ),
      ),
      destinations: <NavigationRailDestination>[
        
        NavigationRailDestination(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          icon: FaIcon(FontAwesomeIcons.fileCode,
              size: coreToolBarIconSize,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.5)),
          selectedIcon:
              FaIcon(FontAwesomeIcons.fileCode, size: coreToolBarIconSize),
          label: Text(AppLocalizations.of(context)!.fileExplorer),
        ),
        
        NavigationRailDestination(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          icon: FaIcon(FontAwesomeIcons.tree,
              size: coreToolBarIconSize,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.5)),
          selectedIcon:
              FaIcon(FontAwesomeIcons.tree, size: coreToolBarIconSize),
          label: Text(AppLocalizations.of(context)!.widgetTree),
        ),
        
        NavigationRailDestination(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          icon: FaIcon(FontAwesomeIcons.codeBranch,
              size: coreToolBarIconSize,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.5)),
          selectedIcon:
              FaIcon(FontAwesomeIcons.codeBranch, size: coreToolBarIconSize),
          label: Text(AppLocalizations.of(context)!.sourceControl),
        ),
      ],
    );
  }
}
