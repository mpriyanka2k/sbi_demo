import 'package:flutter/material.dart';
import 'notification_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final IconData leftIcon;
  final VoidCallback? onLeftIconTap;

  final bool showNotification;
  final VoidCallback? onNotificationTap;
  final int notificationCount;

  final bool centerTitle;

  const CustomAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.leftIcon = Icons.menu,
    this.onLeftIconTap,
    this.showNotification = false,
    this.onNotificationTap,
    this.notificationCount = 0,
    this.centerTitle = false,
  }) : assert(
  title != null || titleWidget != null,
  'Either title or titleWidget must be provided',
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      centerTitle: centerTitle,
      leading: IconButton(
        icon: Icon(leftIcon),
        onPressed: onLeftIconTap,
      ),
      title: titleWidget ??
          Text(
            title!,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
      actions: [
        if (showNotification)
          NotificationIcon(
            count: notificationCount,
            onTap: onNotificationTap,
          ),
        if (showNotification) const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
