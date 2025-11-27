import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sbi_demo/core/constant/app_strings.dart';
import 'package:sbi_demo/core/network/network_info.dart' show NetworkInfo;
import 'package:sbi_demo/core/router/app_router.dart';
import 'package:sbi_demo/core/theme/app_theme.dart';
import 'package:sbi_demo/core/theme/theme_notifier.dart';
import 'package:sbi_demo/firebase_options.dart';


Future<void> main() async {
  // runApp(const MyApp());
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
    runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp.router(
          title: AppStrings.appName,
           theme: AppTheme.lightTheme,
           darkTheme: AppTheme.darkTheme,
          themeMode: themeNotifier.isDark
              ? ThemeMode.dark
              : ThemeMode.light,
           routerConfig: AppRouter.router,
        );
      }
    );  
  }
}
