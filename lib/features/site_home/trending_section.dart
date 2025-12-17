import 'package:flutter/material.dart';
import 'course_card.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Trending Courses',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              _ArrowControls(),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 260,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, __) => const SizedBox(
                width: 200,
                child: CourseCard(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ArrowControls extends StatelessWidget {
  const _ArrowControls();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _ArrowBox(icon: Icons.chevron_left),
        SizedBox(width: 8),
        _ArrowBox(icon: Icons.chevron_right),
      ],
    );
  }
}

class _ArrowBox extends StatelessWidget {
  final IconData icon;
  const _ArrowBox({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(icon),
    );
  }
}
