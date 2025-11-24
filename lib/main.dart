import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_strings.dart';
import 'package:sbi_demo/core/network/network_info.dart' show NetworkInfo;
import 'package:sbi_demo/core/router/app_router.dart';
import 'package:sbi_demo/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      title: AppStrings.appName,
      theme: AppTheme.darkTheme,
       routerConfig: AppRouter.router,
    );
   
  }
}
