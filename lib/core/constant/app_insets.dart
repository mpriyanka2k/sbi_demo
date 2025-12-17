import 'package:flutter/material.dart';
import 'app_spacings.dart';

class AppInsets {
  AppInsets._();

  static final EdgeInsets allSm = EdgeInsets.all(AppSpacing.sm);
  static const EdgeInsets allMd = EdgeInsets.all(AppSpacing.md);
  static const EdgeInsets allLg = EdgeInsets.all(AppSpacing.lg);

  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: AppSpacing.md);

  static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: AppSpacing.lg);
}
