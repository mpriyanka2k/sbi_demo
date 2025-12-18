import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';
import 'package:sbi_demo/core/constant/app_decoration.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_strings.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';
import 'package:sbi_demo/core/widgets/app_bar.dart';
import 'package:sbi_demo/core/widgets/elevated_button.dart';
import 'package:sbi_demo/features/course_detail/widgets/courses_detail_info_card_content.dart';
import 'package:sbi_demo/features/course_detail/widgets/mock_test_list.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Courses',
          leftIcon: Icons.arrow_back,
          centerTitle: false,
          showNotification: false,
          onLeftIconTap: () => context.pop(),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: AppColors.headerBackground
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.coursesHeader, style: AppTextStyles.headingMedium),
                  AppSpacers.vLg16,
                  Text(AppStrings.coursesHeaderDescription, style: AppTextStyles.bodyMedium,),
                  AppSpacers.vLg16,
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.headerCompBackground,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CoursesDetailInfoCardContent(value: '750 +', label: 'Questions',),
                        CoursesDetailInfoCardContent(value: '15', label: 'Modules',),
                        CoursesDetailInfoCardContent(value: '15 hr. 0 min.', label: 'Time',),
                        CoursesDetailInfoCardContent(value: '3.1', label: 'Rating',),
                      ],
                    ),
                  ),
                  AppSpacers.vLg16,
                  CustomElevatedButton(text: 'Continue', onPressed: () {  },backgroundColor: AppColors.buttonGrey, isFullWidth: false,)
                ],
              ),
            ),
            AppSpacers.vLg16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: AppDecorations.borderedContainer(AppColors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Note',
                      style: AppTextStyles.bodyLarge,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.info_outline_rounded,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: MockTestList())
          ],
        )
    );
  }
}
