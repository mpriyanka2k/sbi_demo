import 'package:flutter/material.dart';
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
        'gradient': const [
          Color(0xFFE9D0FF),
          Color(0xFFDCEBFF),
        ],
      },
      {
        'icon': Icons.trending_up,
        'title': '10',
        'subtitle': 'Mandatory \nCourses Remaining',
        'gradient': const [
          Color(0xFFE9D0FF),
          Color(0xFFDCEBFF),
        ],
      },
      {
        'icon': Icons.payments,
        'title': '15',
        'subtitle': 'Courses \nRemaining',
        'gradient': const [
          Color(0xFFEEFDD0),
          Color(0xFFDCF0FA),
        ],
      },
      {
        'icon': Icons.menu_book_rounded,
        'title': '20',
        'subtitle': 'Learning Plans',
        'gradient': const [
          Color(0xFFEEFDD0),
          Color(0xFFDCF0FA),
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
