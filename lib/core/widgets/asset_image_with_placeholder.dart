import 'package:flutter/material.dart';

class AssetImageWithPlaceholder extends StatelessWidget {
  final String imagePath;
  final BorderRadius borderRadius;
  final BoxFit fit;

  const AssetImageWithPlaceholder({
    super.key,
    required this.imagePath,
    required this.borderRadius,
    this.fit = BoxFit.fitWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          imagePath,
          width: double.infinity,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            return Placeholder(
              fallbackHeight: 140,
            );
          },
        ),
      ),
    );
  }
}
