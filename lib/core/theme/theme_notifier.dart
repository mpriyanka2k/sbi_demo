import 'package:flutter/material.dart';
import 'package:sbi_demo/core/theme/app_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeData get currentTheme =>
      _isDark ? AppTheme.darkTheme : AppTheme.lightTheme;

  void toggleTheme(bool value) {
    _isDark = value;
    notifyListeners();
  }
}