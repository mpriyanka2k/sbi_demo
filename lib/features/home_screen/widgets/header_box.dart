import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;

  const RoundedImageCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => const Placeholder(),
      ),
    );
  }
}
