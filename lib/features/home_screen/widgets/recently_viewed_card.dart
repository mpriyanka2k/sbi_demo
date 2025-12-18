import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';
import 'package:sbi_demo/core/widgets/asset_image_with_placeholder.dart';
import 'package:sbi_demo/core/widgets/rating_badge.dart';

class RecentlyViewedCourseCard extends StatelessWidget {
  final String title;
  final String duration;

  const RecentlyViewedCourseCard({
    super.key,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Card(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 110,
                child: AssetImageWithPlaceholder(
                  imagePath: 'assets/images/recently_viewed_pic.png',
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppSpacing.radiusLg),
                  ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(duration),
                            AppSpacers.hXs4,
                            Icon(Icons.favorite, size: 18,color: AppColors.textDisabled,),
                            AppSpacers.hXs4,
                            RatingBadge(rating: 4.5),
                          ],
                        ),
                        SizedBox(height: 22,child: ElevatedButton(onPressed: (){}, child: Text('Enroll', style: AppTextStyles.bodyMedium,)))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
