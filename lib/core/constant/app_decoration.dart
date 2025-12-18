import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._();

  // Border Radius
  static const BorderRadius radius8 = BorderRadius.all(Radius.circular(8));

  static const BorderRadius radius12 = BorderRadius.all(Radius.circular(12));

  static const BorderRadius radius16 = BorderRadius.all(Radius.circular(16));

  // Borders
  static Border borderGrey = Border.all(
    color: Colors.grey,
    width: 1,
  );

  static Border borderPrimary = Border.all(
    color: Colors.indigo,
    width: 1.2,
  );

  // Common BoxDecorations
  static BoxDecoration card = BoxDecoration(
    color: Colors.white,
    borderRadius: radius12,
  );

  static BoxDecoration outlinedCard = BoxDecoration(
    color: Colors.white,
    borderRadius: radius12,
    border: borderGrey,
  );

  static BoxDecoration primaryCard = BoxDecoration(
    color: Colors.indigo,
    borderRadius: radius16,
  );

  static BoxDecoration borderedContainer(Color backgroundColor) {
    return BoxDecoration(
      color: backgroundColor,
      borderRadius: radius16,
      border: borderGrey,
    );
  }
}
