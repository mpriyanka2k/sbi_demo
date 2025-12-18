import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import '../../core/constant/app_insets.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            ),
          ),
          Padding(
            padding:  AppInsets.allSm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Currency Derivatives\n(Series-I): Mock Tests',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                AppSpacers.vSm8,
                Text('4h 0 min'),
                AppSpacers.vSm8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Enroll →'),
                    Row(
                      children: [
                        Icon(Icons.star, size: 14),
                        AppSpacers.hXs4,
                        Text('0'),
                        AppSpacers.hSm8,
                        Icon(Icons.favorite_border, size: 14),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
