import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  static SharedPreferences? _preferences;
  static const String _keyIsLoggedIn = 'isLoggedIn';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setLoggedId(bool value) =>
      _preferences!.setBool(_keyIsLoggedIn, value);

  static bool? getLoggedId() => _preferences!.getBool(_keyIsLoggedIn) ?? false;
}
