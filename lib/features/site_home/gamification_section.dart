import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';

class GamificationSection extends StatelessWidget {
  const GamificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Curated Courses',
      'Learn from Industry Experts',
      'Self-paced learning',
    ];

    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gamification',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          AppSpacers.vSm8,
          const Text(
            'Interactive modules to discover and learn new concepts in fun and interactive way.',
          ),
          AppSpacers.vLg16,
          ...items.map(
                (e) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  const CircleAvatar(radius: 16, backgroundColor: Colors.white),
                  AppSpacers.hMd12,
                  Text(e),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
