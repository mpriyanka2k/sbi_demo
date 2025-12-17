import 'package:flutter/material.dart';

class Placeholder extends StatelessWidget {
  const Placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.image_outlined, size: 40, color: Colors.grey),
            SizedBox(height: 8),
            Text(
              'Image unavailable',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
