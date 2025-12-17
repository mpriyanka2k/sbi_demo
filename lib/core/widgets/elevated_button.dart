import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final double radius;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final bool isFullWidth;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 48,
    this.radius = AppSpacing.radiusXXl,
    this.backgroundColor,
    this.textStyle,
    this.isFullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: isFullWidth ? double.infinity : 200,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
          backgroundColor ?? theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppTextStyles.buttonSecondary
        ),
      ),
    );
  }
}
