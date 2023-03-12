import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences preferences;
  static const String tokenKey = 'TOKEN';
  static const String typeSelected = 'TYPE_SELECTED';
  static const String temporalPassword = 'TEMP_PASSWORD';
  static const String email = 'EMAIL';
  static Future<void> configurePreferences() async {
    preferences = await SharedPreferences.getInstance();
  }
}
