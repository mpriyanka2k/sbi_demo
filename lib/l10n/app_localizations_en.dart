// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'SBI Demo';

  @override
  String get flavorTestTitle => 'Flavor Test';

  @override
  String get currentFlavorLabel => 'Current Flavor';

  @override
  String get flavorDetailsTitle => 'Flavor Details';

  @override
  String get flavorNameLabel => 'Flavor Name';

  @override
  String get displayNameLabel => 'Display Name';

  @override
  String get baseUrlLabel => 'Base URL';

  @override
  String environmentDescription(String flavorName) {
    return 'You are currently running the $flavorName flavor.';
  }
}
