import 'package:flutter/material.dart';

class CrossPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black54
      ..strokeWidth = 1.5;

    canvas.drawLine(
      const Offset(16, 16),
      Offset(size.width - 16, size.height - 16),
      paint,
    );

    canvas.drawLine(
      Offset(size.width - 16, 16),
      Offset(16, size.height - 16),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
