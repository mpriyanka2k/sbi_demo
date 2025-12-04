import 'package:sbi_demo/bootstrap.dart';
import 'package:sbi_demo/core/config/flavor.dart';

Future<void> main() async {
  await bootstrap(flavor: Flavor.staging);
}

