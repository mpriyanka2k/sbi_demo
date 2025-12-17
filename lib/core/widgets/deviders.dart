import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.blueGrey,
      thickness: 1,
      indent: 16,
      endIndent: 32,
    );
  }
}
