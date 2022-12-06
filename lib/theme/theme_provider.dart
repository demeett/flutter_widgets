import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../logic/shared_pref/shared_pref.dart';
import 'app_theme.dart';

enum SharedPrefKeys {
  theme;
}

class ThemeProvider extends ChangeNotifier {
  final IAppTheme appTheme;
  final ISharedPref sharedPref;
  ThemeProvider({
    required this.appTheme,
    required this.sharedPref,
  });

  ThemesKey theme = ThemesKey.defaultValue;
  ThemeData get themeData => theme.getThemeData(appTheme);

  void init() {
    final isHave = sharedPref.containsKey(SharedPrefKeys.theme.name);
    if (isHave) {
      final themeKeyName = sharedPref.getString(SharedPrefKeys.theme.name) ?? ThemesKey.defaultValue.name;
      theme = themeKeyName.getType();
    }
  }

  Future<void> changeTheme(ThemesKey key) async {
    await sharedPref.setString(SharedPrefKeys.theme.name, key.name);
    theme = key;
    notifyListeners();
  }
}

enum ThemesKey {
  pinkTheme,
  purpleTheme,
  redTheme;

  static ThemesKey get defaultValue => ThemesKey.pinkTheme;
}

extension ThemesKeyExtensions on ThemesKey {
  ThemeData getThemeData(IAppTheme appTheme) {
    switch (this) {
      case ThemesKey.pinkTheme:
        return appTheme.pinkTheme;
      case ThemesKey.purpleTheme:
        return appTheme.purpleTheme;
      case ThemesKey.redTheme:
        return appTheme.redTheme;
    }
  }
}

extension StringExtensions on String {
  ThemesKey getType() {
    return ThemesKey.values.firstWhereOrNull((item) => item.name == this) ?? ThemesKey.defaultValue;
  }
}
