import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  static late final SharedPreferences sharedPrefrences;

  static Future<void> casheInitialization() async {
    sharedPrefrences = await SharedPreferences.getInstance();
  }

  static void setData(String key, dynamic value) {
    if (value is String) {
      sharedPrefrences.setString(key, value);
    } else if (value is int) {
      sharedPrefrences.setInt(key, value);
    } else if (value is double) {
      sharedPrefrences.setDouble(key, value);
    } else if (value is bool) {
      sharedPrefrences.setBool(key, value);
    } else if (value is List<String>) {
      sharedPrefrences.setStringList(key, value);
    }
  }

  static dynamic getData(String key) {
    return sharedPrefrences.get(key);
  }

  static Future<void> clearAll() async {
    await sharedPrefrences.clear();
  }
}
