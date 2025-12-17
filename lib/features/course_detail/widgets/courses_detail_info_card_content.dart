import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';

class CoursesDetailInfoCardContent extends StatelessWidget {
  final String value;
  final String label;
  final TextStyle? valueStyle;
  final TextStyle? labelStyle;
  final CrossAxisAlignment alignment;

  const CoursesDetailInfoCardContent({
    super.key,
    required this.value,
    required this.label,
    this.valueStyle,
    this.labelStyle,
    this.alignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: valueStyle ??
              AppTextStyles.headingMedium,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: labelStyle ??
              AppTextStyles.bodyMedium,
        ),
      ],
    );
  }
}
