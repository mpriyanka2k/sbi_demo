import 'package:flutter/widgets.dart';

import 'app_spacings.dart';

class AppSpacers {
  AppSpacers._();

  /// Vertical spacers
  static const SizedBox vXs = SizedBox(height: AppSpacing.xs);
  static const SizedBox vSm = SizedBox(height: AppSpacing.sm);
  static const SizedBox vMd = SizedBox(height: AppSpacing.md);
  static const SizedBox vLg = SizedBox(height: AppSpacing.lg);
  static const SizedBox vXl = SizedBox(height: AppSpacing.xl);
  static const SizedBox vXxl = SizedBox(height: AppSpacing.xxl);
  static const SizedBox vXxxl = SizedBox(height: AppSpacing.xxxl);

  /// Horizontal spacers
  static const SizedBox hXs = SizedBox(width: AppSpacing.xs);
  static const SizedBox hSm = SizedBox(width: AppSpacing.sm);
  static const SizedBox hMd = SizedBox(width: AppSpacing.md);
  static const SizedBox hLg = SizedBox(width: AppSpacing.lg);
  static const SizedBox hXl = SizedBox(width: AppSpacing.xl);
  static const SizedBox hXxl = SizedBox(width: AppSpacing.xxl);
  static const SizedBox hXxxl = SizedBox(width: AppSpacing.xxxl);
}
