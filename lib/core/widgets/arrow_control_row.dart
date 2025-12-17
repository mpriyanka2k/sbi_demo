import 'package:flutter/material.dart';

class ArrowControlRow extends StatelessWidget {
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;

  const ArrowControlRow({
    super.key,
    this.onPrevious,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ArrowButton(
          icon: Icons.arrow_back_ios_new,
          onTap: onPrevious,
        ),
        const SizedBox(width: 8),
        _ArrowButton(
          icon: Icons.arrow_forward_ios,
          onTap: onNext,
        ),
      ],
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _ArrowButton({
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),
        child: Icon(
          icon,
          size: 12,
          color: Colors.black87,
        ),
      ),
    );
  }
}
