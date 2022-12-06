import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPref {
  Future<void> init();
  bool? getBool(String key);
  Future<bool> setBool(String key, bool value);
  Future<bool> setString(String key, String value);
  String? getString(String key);
  Future<bool> setInt(String key, int value);
  int? getInt(String key);
  Future<bool> setListString(String key, List<String> list);
  List<String>? getListString(String key);
  bool containsKey(String key);
}

class SharedPrefImpl implements ISharedPref {
  late SharedPreferences _sharedPreferences;
  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  bool? getBool(String key) => _sharedPreferences.getBool(key);

  @override
  Future<bool> setBool(String key, bool value) async => await _sharedPreferences.setBool(key, value);

  @override
  Future<bool> setString(String key, String value) async => await _sharedPreferences.setString(key, value);

  @override
  String? getString(String key) => _sharedPreferences.getString(key) ?? "";

  @override
  Future<bool> setInt(String key, int value) async => await _sharedPreferences.setInt(key, value);

  @override
  int? getInt(String key) => _sharedPreferences.getInt(key);

  @override
  Future<bool> setListString(String key, List<String> list) async => await _sharedPreferences.setStringList(key, list);

  @override
  List<String>? getListString(String key) => _sharedPreferences.getStringList(key);

  @override
  bool containsKey(String key) => _sharedPreferences.containsKey(key);
}
