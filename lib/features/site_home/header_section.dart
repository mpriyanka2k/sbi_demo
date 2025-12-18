import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_insets.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppInsets.allLg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Discover your Perfect Course in Our Training Platform',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          AppSpacers.vMd12,
          Text(
            'SIF - Common Derivatives',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
