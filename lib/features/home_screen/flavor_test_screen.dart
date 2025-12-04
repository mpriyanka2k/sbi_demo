import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/utils/localization/change_locale.dart';
import 'package:sbi_demo/l10n/app_localizations.dart';

class FlavorTestScreen extends ConsumerWidget {
  const FlavorTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = FlavorConfig.instance;
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.flavorTestTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: config.accentColor.withValues(alpha: 0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: config.accentColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                _getIcon(config.flavor),
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.currentFlavorLabel,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    config.displayName,
                                    style: theme.textTheme.titleLarge?.copyWith(
                                      color: config.accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    l10n.environmentDescription(config.displayName),
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _InfoCard(
                  title: l10n.flavorDetailsTitle,
                  items: [
                    _InfoItem(
                      label: l10n.flavorNameLabel,
                      value: config.name,
                      icon: Icons.label,
                    ),
                    _InfoItem(
                      label: l10n.displayNameLabel,
                      value: config.displayName,
                      icon: Icons.badge,
                    ),
                    _InfoItem(
                      label: l10n.baseUrlLabel,
                      value: config.baseUrl,
                      icon: Icons.link,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(localeProvider.notifier).toggleLocale();
                  },
                  child: Text('Change Language'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIcon(Flavor flavor) {
    switch (flavor) {
      case Flavor.dev:
        return Icons.code;
      case Flavor.staging:
        return Icons.science;
      case Flavor.prod:
        return Icons.check_circle;
    }
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final List<_InfoItem> items;

  const _InfoCard({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...items.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: item,
                )),
          ],
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoItem({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

