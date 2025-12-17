import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'dashboard_courses_card.dart';

class DashboardCoursesGrid extends StatelessWidget {
  const DashboardCoursesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '30 Min',
        'progress': 'Progress: 90%',
      },
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '30 Min',
        'progress': 'Progress: 90%',
      },
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '30 Min',
        'progress': 'Progress: 90%',
      },
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '30 Min',
        'progress': 'Progress: 90%',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.md,
        crossAxisSpacing: AppSpacing.md,
        childAspectRatio: 0.63,
      ),
      itemBuilder: (context, index) {
        final course = courses[index];

        return DashboardCoursesCard(
          title: course['title'],
          duration: course['duration'],
          progress: course['progress'],
        );
      },
    );
  }
}
