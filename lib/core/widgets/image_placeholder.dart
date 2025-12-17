import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';

import 'cross_painter.dart';

class Placeholder extends StatelessWidget {
  final double height;
  final BorderRadius borderRadius;

  const Placeholder({super.key,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: borderRadius,
      ),
      child: CustomPaint(
        painter: CrossPainter(),
      ),
    );
  }
}
