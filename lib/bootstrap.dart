import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sbi_demo/app.dart';
import 'package:sbi_demo/firebase/firebase_options_dev.dart' as dev;
import 'package:sbi_demo/firebase/firebase_options_staging.dart' as staging;
import 'package:sbi_demo/firebase/firebase_options_prod.dart' as prod;
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/di/service_locator.dart';

Future<void> bootstrap({Flavor? flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();

  print("===========================================");
  print("🔥 BOOTSTRAP STARTED");
  print("🔥 Selected Flavor: $flavor");
  print("===========================================");

  FirebaseOptions firebaseOptions;

  switch (flavor) {
    case Flavor.dev:
      firebaseOptions = dev.DefaultFirebaseOptions.currentPlatform;
      print("👉 Using DEV Firebase Options");
      break;

    case Flavor.staging:
      firebaseOptions = staging.DefaultFirebaseOptions.currentPlatform;
      print("👉 Using STAGING Firebase Options");
      break;

    case Flavor.prod:
      firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
      print("👉 Using PROD Firebase Options");
      break;

    default:
      firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
      print("👉 Using DEFAULT (PROD) Firebase Options");
  }

  print("===========================================");
  print("🔥 Firebase Config Loaded:");
  print("Project ID     : ${firebaseOptions.projectId}");
  print("App ID         : ${firebaseOptions.appId}");
  print("Messaging ID   : ${firebaseOptions.messagingSenderId}");
  print("Storage Bucket : ${firebaseOptions.storageBucket}");
  print("===========================================");

  await Firebase.initializeApp(options: firebaseOptions);

  print("✅ Firebase initialized: ${Firebase.app().name}");
  print("===========================================");

  FlavorConfig.initialize(flavor ?? Flavor.dev);

  print("🔥 FlavorConfig Initialized → ${flavor ?? Flavor.dev}");
  print("===========================================");

  await init();

  print("🔥 Dependency Injection Initialized");
  print("===========================================");
  print("🚀 Launching app…");
  print("===========================================");

  runApp(ProviderScope(child: const MyApp()));
}
