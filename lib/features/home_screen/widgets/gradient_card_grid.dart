import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import 'gradient_info_card.dart';

class GradientCardGrid extends StatelessWidget {
  const GradientCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardsData = [
      {
        'icon': Icons.account_balance,
        'title': '08',
        'subtitle': 'Total No. of \nCourses Enrolled',
        'gradient':  [
          AppColors.gColor1,
          AppColors.gColor2,
        ],
      },
      {
        'icon': Icons.trending_up,
        'title': '10',
        'subtitle': 'Mandatory \nCourses Remaining',
        'gradient': const [
          AppColors.gColor1,
          AppColors.gColor2,
        ],
      },
      {
        'icon': Icons.payments,
        'title': '15',
        'subtitle': 'Courses \nRemaining',
        'gradient': const [
          AppColors.gColor3,
          AppColors.gColor4,
        ],
      },
      {
        'icon': Icons.menu_book_rounded,
        'title': '20',
        'subtitle': 'Learning Plans',
        'gradient': const [
          AppColors.gColor3,
          AppColors.gColor4,
        ],
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 2.6,
      ),
      itemCount: cardsData.length,
      itemBuilder: (context, index) {
        final card = cardsData[index];
        return GradientInfoCard(
          icon: card['icon'],
          title: card['title'],
          subtitle: card['subtitle'],
          gradientColors: card['gradient'],
        );
      },
    );
  }
}
