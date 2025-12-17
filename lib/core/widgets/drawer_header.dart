import 'package:flutter/material.dart';

class DrawerHeader extends StatelessWidget {
  final String appName;
  final String userName;
  final String userEmail;
  final String? profileImageUrl;

  const DrawerHeader({
    super.key, 
    required this.appName,
    required this.userName,
    required this.userEmail,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: theme.colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage:
            profileImageUrl != null ? NetworkImage(profileImageUrl!) : null,
            child: profileImageUrl == null
                ? const Icon(Icons.person, size: 32)
                : null,
          ),
          const SizedBox(height: 12),
          Text(
            userName,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            userEmail,
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            appName,
            style: theme.textTheme.labelSmall?.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
