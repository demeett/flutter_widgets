import 'package:flutter/material.dart';

import '../locator.dart';
import '../logic/shared_pref/shared_pref.dart';

class ThemeSelection {
  ThemeData pinkTheme = ThemeData(
      primaryColor: Colors.pink,
      primarySwatch: Colors.pink,
      buttonTheme: const ButtonThemeData(buttonColor: Color.fromARGB(255, 235, 130, 165)));
  ThemeData purpleTheme = ThemeData(
      primaryColor: Colors.purple,
      primarySwatch: Colors.purple,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.purpleAccent));
  ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.redAccent),
  );
}

enum SharedPrefKeys { theme }

enum ThemesKey { pinkTheme, purpleTheme, redTheme }

extension ExtensionThemeSelection on ThemeData {
  String getName() {
    if (this == ThemeSelection().pinkTheme) {
      return ThemesKey.pinkTheme.name;
    } else if (this == ThemeSelection().purpleTheme) {
      return ThemesKey.purpleTheme.name;
    } else {
      return ThemesKey.redTheme.name;
    }
  }
}

extension ExtensionString on String {
  ThemeData switchCase() {
    switch (this) {
      case "pinkTheme":
        return ThemeSelection().pinkTheme;
      case "purpleTheme":
        return ThemeSelection().purpleTheme;
      case "redTheme":
        return ThemeSelection().redTheme;
      default:
        return ThemeData.dark();
    }
  }
}

class ThemeColorSelection extends ChangeNotifier {
  String themeName = ThemesKey.pinkTheme.name;
  ThemeData get themeColor {
    try {
      bool isHave = getIt<ISharedPref>().containsKey(SharedPrefKeys.theme.name);
      if (isHave) {
        themeName = getIt<ISharedPref>().getString(SharedPrefKeys.theme.name) ?? "pinkTheme";
        return themeName.switchCase();
      } else {
        return ThemeSelection().pinkTheme;
      }
    } catch (e) {
      return ThemeSelection().pinkTheme;
    }
  }

  Future<void> changeThemesData(String key) async {
    await getIt<ISharedPref>().setString(SharedPrefKeys.theme.name, key);
    notifyListeners();
  }
}






  // ThemeData switchCase(String themeName) {
  //   switch (themeName) {
  //     case "pinkTheme":
  //       return ThemeSelection().pinkTheme;
  //     case "purpleTheme":
  //       return ThemeSelection().purpleTheme;
  //     case "redTheme":
  //       return ThemeSelection().redTheme;
  //     default:
  //       return ThemeData.dark();
  //   }
  // }