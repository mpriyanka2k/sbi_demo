import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_decoration.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/constant/app_strings.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';

class MockTestCard extends StatelessWidget {
  final String title;
  final String questions;
  final String attempts;
  final VoidCallback? onInfoTap;
  final Color backgroundColor;
  final bool isLocked;

  const MockTestCard({
    super.key,
    required this.title,
    required this.questions,
    required this.attempts,
    this.onInfoTap,
    this.backgroundColor = Colors.white,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: AppDecorations.borderedContainer(backgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.headingSmall,),
              AppSpacers.vLg16,
              Text('${AppStrings.noOfQuestions} $questions'),
              const SizedBox(height: 4),
              Text('${AppStrings.noOfAttempts} $attempts'),
            ],
          ),
        ),

        Positioned(
          bottom: 8,
          right: 8,
          child: isLocked
              ? const Icon(
            Icons.lock,
            color: Colors.black54,
          )
              : IconButton(
            icon: const Icon(Icons.arrow_forward_outlined),
            onPressed: onInfoTap,
          ),
        ),
      ],
    );
  }
}
