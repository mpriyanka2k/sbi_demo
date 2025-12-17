import 'package:flutter/material.dart';

class GradientInfoCardRow extends StatelessWidget {
  final IconData icon;
  final String count;
  final String subtitle;
  final List<Color> gradientColors;

  const GradientInfoCardRow({
    super.key,
    required this.icon,
    required this.count,
    required this.subtitle,
    this.gradientColors = const [
      Color(0xFFE9D0FF),
      Color(0xFFDCEBFF),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [

              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                count,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          TextButton(
              onPressed: (){},
              child: Text(
                'Show All',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),)
          )
        ],
      ),
    );
  }
}
