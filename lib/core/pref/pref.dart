import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();

  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static Future<String?> getVisitorToken() async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getString('visitorToken');
  }

  static Future<void> setVisitorToken({required String visitorToken}) async {
    final SharedPreferences prefs = await _prefs;

    prefs.setString('visitorToken', visitorToken);
  }

  static Future<void> deleteVisitorToken() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove('visitorToken');
  }
}
