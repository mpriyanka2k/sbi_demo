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

  FirebaseOptions firebaseOptions;

  switch (flavor) {
    case Flavor.dev:
      firebaseOptions = dev.DefaultFirebaseOptions.currentPlatform;
      break;

    case Flavor.staging:
      firebaseOptions = staging.DefaultFirebaseOptions.currentPlatform;
      break;

    case Flavor.prod:
      firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
      break;

    default:
      firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
  }

  await Firebase.initializeApp(options: firebaseOptions);

  FlavorConfig.initialize(flavor ?? Flavor.dev);

  await init();

  runApp(ProviderScope(child: const MyApp()));
}
