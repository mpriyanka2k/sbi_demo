import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  /// Headings
  static const TextStyle headingLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headingMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  /// Body
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  /// Captions
  static const TextStyle caption = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  /// Buttons
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle buttonSecondary = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black
  );


  static final TextStyle viewAllButtonStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.blue
  );


  /// Labels
  static const TextStyle label = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  ///Dashboard
  static const TextStyle cardTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.blue,
    height: 1,
  );

  static const TextStyle cardSubTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    height: 1,
  );

}
