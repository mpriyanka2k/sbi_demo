import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sbi_demo/app.dart';
import 'package:sbi_demo/firebase/firebase_options_dev.dart' as dev;
import 'package:sbi_demo/firebase/firebase_options_staging.dart' as staging;
import 'package:sbi_demo/firebase/firebase_options_prod.dart' as prod;
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/di/service_locator.dart';

Future<void> bootstrap({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();

  print("🔥 Selected Flavor: $flavor");

  final firebaseOptions = switch (flavor) {
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
    Flavor.staging => staging.DefaultFirebaseOptions.currentPlatform,
    Flavor.prod => prod.DefaultFirebaseOptions.currentPlatform,
  };

  await Firebase.initializeApp(options: firebaseOptions);

  // ENABLE CRASHLYTICS PER FLAVOR
  final enableCrashlytics = switch (flavor) {
    Flavor.dev => false,     // Disable in dev
    Flavor.staging => true,
    Flavor.prod => true,
  };

  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
    enableCrashlytics,
  );

  print("🔥 Crashlytics Enabled? → $enableCrashlytics");

  // Flutter errors → Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  // async errors → Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
    return true;
  };

  // INITIALIZE FLAVOR CONFIG + DI
  FlavorConfig.initialize(flavor);
  await init();

  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}
