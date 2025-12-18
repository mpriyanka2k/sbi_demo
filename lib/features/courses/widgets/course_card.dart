import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/widgets/asset_image_with_placeholder.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String duration;
  final int rating;

  const CourseCard({
    super.key,
    required this.title,
    required this.duration,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          AssetImageWithPlaceholder(
            imagePath: 'assets/images/course.png',
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
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),

                Row(
                  children: [
                    Text(duration),
                    const Spacer(),
                    const Icon(Icons.star, size: 16),
                    Text('$rating'),
                    AppSpacers.hSm8,
                    const Icon(Icons.favorite_border, size: 16),
                  ],
                ),

                const SizedBox(height: AppSpacing.sm),

                Row(
                  children: const [
                    Text(
                      'Enroll',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    AppSpacers.hXs4,
                    Icon(Icons.arrow_right_alt_outlined, size: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
