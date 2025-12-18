import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';

class GradientInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final List<Color> gradientColors;

  const GradientInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.gradientColors = const [
      AppColors.gColor1,
      AppColors.gColor2,
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.black54,
              size: 30,
            ),
          ),
        AppSpacers.hSm8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextStyles.cardTitle,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
            Text(
              subtitle,
              style: AppTextStyles.cardSubTitle,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
