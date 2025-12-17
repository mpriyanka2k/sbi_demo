import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';

class FilterTab extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  const FilterTab({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.headerBackground
                  : AppColors.coursesTab,
              borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
