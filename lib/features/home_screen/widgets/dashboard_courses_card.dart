import 'package:flutter/material.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';
import 'package:sbi_demo/core/widgets/asset_image_with_placeholder.dart';

class DashboardCoursesCard extends StatelessWidget {
  final String title;
  final String duration;
  final String progress;

  const DashboardCoursesCard({
    super.key,
    required this.title,
    required this.duration,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          AssetImageWithPlaceholder(
            imagePath: 'assets/images/course_picture.png',
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppSpacing.radiusLg),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14
                  ),
                ),
                AppSpacers.vSm8,

                Text(duration),
                AppSpacers.vXs4,

                Text(progress),
                AppSpacers.vSm8,

                BarProgress(
                  percentage: 90.0,
                  showPercentage: false,
                  color: Colors.green,
                  backColor: Colors.grey.shade100,
                  stroke: 4,
                  round: true,
                ),
                AppSpacers.vSm8,

                Center(child: ElevatedButton(onPressed: (){}, child: Text('Complete Now', style: AppTextStyles.bodyMedium,)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
