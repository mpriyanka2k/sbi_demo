import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/router/app_routes.dart';
import 'course_card.dart';

class CoursesGrid extends StatelessWidget {
  final int itemCount;
  const CoursesGrid({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.md),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.md,
        crossAxisSpacing: AppSpacing.md,
        childAspectRatio: 0.68,
      ),
      itemCount: itemCount,
      itemBuilder: (_, index) {
        return InkWell(
          onTap:  () => context.push(AppRoutes.courseDetail),
          child: const CourseCard(
            title: 'Currency Derivatives (Series-I): Mock Tests',
            duration: '4h 0 min',
            rating: 0,
          ),
        );
      },
    );
  }
}