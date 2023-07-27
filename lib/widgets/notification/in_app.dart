import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/log_level.dart';
import '../../theme/colors.dart';

Widget getNotification(BuildContext context, String description,
    {String? title,
    DateTime? firedAt,
    LogLevel logLevel = LogLevel.none,
    int code = -1}) {
  Color iconColor =
      Theme.of(context).iconTheme.color ?? AppColors.defaultIconColor;
  IconData iconData = FontAwesomeIcons.bell;
  double iconSize = 16;

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

  return ElegantNotification(
    width: 300,
    height: 50,
    radius: 4.0,
    title: title != null
        ? Text(title, style: Theme.of(context).textTheme.bodyMedium)
        : null,
    description:
        Text(description, style: Theme.of(context).textTheme.bodySmall),
    icon: FaIcon(iconData, color: iconColor, size: iconSize),
    iconSize: iconSize,
    progressIndicatorColor: iconColor,
    background: Theme.of(context).colorScheme.surface,
  );
}
