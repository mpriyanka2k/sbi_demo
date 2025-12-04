import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Prefs? _instance;
  static SharedPreferences? _prefs;

  Prefs._();

  static Future<Prefs> getInstance() async {
    _instance ??= Prefs._();
    _prefs = await SharedPreferences.getInstance();
    return _instance!;
  }

  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }
}