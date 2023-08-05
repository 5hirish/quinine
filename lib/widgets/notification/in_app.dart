import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/log_level.dart';
import '../../theme/colors.dart';

Widget getNotification(
    BuildContext context, AnimationController controller, String description,
    {String? title,
    DateTime? firedAt,
    LogLevel logLevel = LogLevel.none,
    int code = -1,
    Function()? onDismissed}) {
  Color iconColor =
      Theme.of(context).iconTheme.color ?? AppColors.defaultIconColor;
  IconData iconData = FontAwesomeIcons.bell;
  double iconSize = 14;

  if (logLevel == LogLevel.fatal) {
    iconData = FontAwesomeIcons.triangleExclamation;
    iconColor = AppColors.defaultFatalColor;
  }

  if (logLevel == LogLevel.error) {
    iconData = FontAwesomeIcons.circleXmark;
    iconColor = Theme.of(context).colorScheme.error;
  }

  if (logLevel == LogLevel.warning) {
    iconData = FontAwesomeIcons.circleExclamation;
    iconColor = AppColors.defaultInfoColor;
  }

  if (logLevel == LogLevel.info) {
    iconData = FontAwesomeIcons.exclamation;
    iconColor = AppColors.defaultInfoColor;
  }

  return Container(
    width: 300,
    constraints: const BoxConstraints(maxHeight: 212),
    padding:
        const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, right: 8.0),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
          blurRadius: 4.0,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0, top: 8.0, left: 4.0),
          child: FaIcon(iconData, color: iconColor, size: iconSize),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (title != null && title.isNotEmpty)
                  ? Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: EdgeInsets.only(
                    top: title != null && title.isNotEmpty ? 8.0 : 4.0),
                child: Text(description,
                    textAlign: TextAlign.start,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        ),
        IconButton(
          padding: const EdgeInsets.all(8.0),
          constraints: const BoxConstraints(),
          onPressed: () => onDismissed?.call(),
          icon: FaIcon(FontAwesomeIcons.xmark,
              color: Theme.of(context).colorScheme.secondary, size: 12),
        ),
      ],
    ),
  );
}
