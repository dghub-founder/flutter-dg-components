import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Future<void> setString(String key, String value) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(key, value);
  }

  Future<String?> getString(String key) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.containsKey(key)) {
      return _prefs.getString(key);
    } else {
      return null;
    }
  }
}
