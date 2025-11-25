import 'package:flutter/material.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/constant/app_strings.dart';
import 'package:sbi_demo/core/router/app_router.dart';
import 'package:sbi_demo/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final flavorConfig = FlavorConfig.instance;

    final theme = AppTheme.darkTheme.copyWith(
      colorScheme: AppTheme.darkTheme.colorScheme.copyWith(
        primary: flavorConfig.accentColor,
      ),
    );

    return MaterialApp.router(
      title: AppStrings.appName,
      theme: theme,
      routerConfig: AppRouter.router,
    );
  }
}

