import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Basic Colors
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;

  static const Color grey = Colors.grey;
  static const Color blue = Colors.blue;
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color orange = Colors.orange;
  static const Color blueGrey = Colors.blueGrey;

  
  // Brand / Primary Colors
  static const Color primary = Color(0xFF2563EB); // Blue
  static const Color primaryLight = Color(0xFF60A5FA);
  static const Color primaryDark = Color(0xFF1E40AF);

  static const Color secondary = Color(0xFF64748B); // Slate
  static const Color secondaryLight = Color(0xFFCBD5E1);
  static const Color secondaryDark = Color(0xFF334155);

  static const Color accent = Color(0xFF22C55E); // Green
  static const Color accentLight = Color(0xFF86EFAC);
  static const Color accentDark = Color(0xFF15803D);

  
  // Background Colors
  static const Color scaffoldBackground = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardBackground = Colors.white;

  static const Color backgroundSecondary = Color(0xFFF1F5F9);
  static const Color backgroundTertiary = Color(0xFFE2E8F0);

  static const Color overlay = Color(0x80000000); // dialogs, modals

  
  // Text Colors
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);
  static const Color textTertiary = Color(0xFF64748B);
  static const Color textDisabled = Color(0xFF94A3B8);
  static const Color textInverse = Colors.white;
  static const Color textLink = primary;
  static const Color textPlaceholder = Color(0xFF9CA3AF);

  
  // Border, Divider & Outline
  static const Color border = Color(0xFFE2E8F0);
  static const Color borderStrong = Color(0xFFCBD5E1);
  static const Color borderFocus = primary;

  static const Color divider = Color(0xFFE5E7EB);

  
  // Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonPrimaryHover = primaryDark;

  static const Color buttonSecondary = secondary;
  static const Color buttonSecondaryHover = secondaryDark;

  static const Color buttonGrey = grey;
  static const Color buttonDisabled = Color(0xFFCBD5E1);

  static const Color buttonTextPrimary = Colors.white;
  static const Color buttonTextSecondary = textPrimary;

  
  // Form / Input Colors
  static const Color inputBackground = Colors.white;
  static const Color inputBorder = border;
  static const Color inputFocusedBorder = primary;
  static const Color inputErrorBorder = error;

  static const Color inputHintText = textPlaceholder;
  static const Color inputText = textPrimary;

  
  // Status / Feedback Colors
  static const Color success = Color(0xFF16A34A);
  static const Color successLight = Color(0xFFDCFCE7);

  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);

  static const Color error = Color(0xFFDC2626);
  static const Color errorLight = Color(0xFFFEE2E2);

  static const Color info = Color(0xFF0284C7);
  static const Color infoLight = Color(0xFFDBEAFE);

  
  // Drawer / Navigation
  static const Color drawerBackground = Colors.white;
  static const Color drawerHeaderBackground = Color(0xFFDBEAFE);
  static const Color drawerSelectedItem = primary;
  static const Color drawerUnselectedItem = textSecondary;

  
  // Icon Colors
  static const Color iconPrimary = textPrimary;
  static const Color iconSecondary = textSecondary;
  static const Color iconDisabled = textDisabled;
  static const Color iconInverse = Colors.white;

  
  // Chip / Tag Colors
  static const Color chipBackground = Color(0xFFF1F5F9);
  static const Color chipSelectedBackground = primary;
  static const Color chipText = textSecondary;
  static const Color chipSelectedText = Colors.white;

  
  // Grey Scale (UI utility)
  static const Color grey50 = Color(0xFFF8FAFC);
  static const Color grey100 = Color(0xFFF1F5F9);
  static const Color grey200 = Color(0xFFE2E8F0);
  static const Color grey300 = Color(0xFFCBD5E1);
  static const Color grey400 = Color(0xFF94A3B8);
  static const Color grey500 = Color(0xFF64748B);
  static const Color grey600 = Color(0xFF475569);
  static const Color grey700 = Color(0xFF334155);
  static const Color grey800 = Color(0xFF1E293B);
  static const Color grey900 = Color(0xFF0F172A);

  
  // Charts / Analytics
  static const Color chartBlue = Color(0xFF3B82F6);
  static const Color chartGreen = Color(0xFF22C55E);
  static const Color chartOrange = Color(0xFFF97316);
  static const Color chartRed = Color(0xFFEF4444);
  static const Color chartPurple = Color(0xFF8B5CF6);

  
  // Courses / Domain-specific
  static const Color headerBackground = Color(0xffE6E6E6);
  static const Color headerCompBackground = Color(0xffD9D9D9);
  static const Color coursesTab = Color(0xffF5F5F5);

  
  // Gradient Colors
  static const Color gColor1 = Color(0xFFE9D0FF);
  static const Color gColor2 = Color(0xFFDCEBFF);
  static const Color gColor3 = Color(0xFFEEFDD0);
  static const Color gColor4 = Color(0xFFDCF0FA);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient softBackgroundGradient = LinearGradient(
    colors: [grey50, grey100],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
