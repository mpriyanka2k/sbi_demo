import 'package:flutter/widgets.dart';
import 'package:sbi_demo/app.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/di/service_locator.dart';

Future<void> bootstrap({Flavor? flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (flavor != null) {
    FlavorConfig.initialize(flavor);
  } else {
    FlavorConfig.initialize();
  }
  await init();
  runApp(const MyApp());
}

