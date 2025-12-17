import 'package:flutter/material.dart';
import 'package:sbi_demo/features/home_screen/widgets/recently_viewed_card.dart';

class RecentlyViewedCourseCardList extends StatelessWidget {
  const RecentlyViewedCourseCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '1h 30min',
      },
      {
        'title': 'Currency Derivatives (Series-1): Mock Tests',
        'duration': '1h 30min',
      },
    ];

    return SizedBox(
      height: 212,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];

          return RecentlyViewedCourseCard(
            title: course['title'],
            duration: course['duration'],
          );
        },
      ),
    );
  }
}
