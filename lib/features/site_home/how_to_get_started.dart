import 'package:flutter/material.dart';

class HowToGetStarted extends StatelessWidget {
  const HowToGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      'Enroll in Course',
      'Complete the Lessons',
      'Certificates',
    ];

    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How to get started',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...steps.map(
                (e) => Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  const CircleAvatar(backgroundColor: Colors.white),
                  const SizedBox(width: 12),
                  Expanded(child: Text(e)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
