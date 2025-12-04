// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'एसबीआई डेमो';

  @override
  String get flavorTestTitle => 'फ्लेवर्स परीक्षण';

  @override
  String get currentFlavorLabel => 'वर्तमान फ्लेवर';

  @override
  String get flavorDetailsTitle => 'फ्लेवर विवरण';

  @override
  String get flavorNameLabel => 'फ्लेवर नाम';

  @override
  String get displayNameLabel => 'प्रदर्शित नाम';

  @override
  String get baseUrlLabel => 'बेस यूआरएल';

  @override
  String environmentDescription(String flavorName) {
    return 'आप वर्तमान में $flavorName फ्लेवर चला रहे हैं।';
  }
}
