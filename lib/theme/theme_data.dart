import 'package:flutter/material.dart';
import 'package:flutter_widget/locator.dart';

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

//3. bir tema eklenecek
//isTheme yerine enum kullanılacak.
//sharedpref kaydetmek için enum kullanılacak .

enum SharedPrefKeys { theme }

enum ThemesKey { pinkTheme, purpleTheme, redTheme }

extension ExtensionThemesKey on ThemesKey {
  ThemeData getTheme() {
    switch (name) {
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

  // String getThemes() {
  //   switch (this) {
  //     case ThemesKey.pinkTheme:
  //       return "pinkTheme";
  //     case ThemesKey.purpleTheme:
  //       return "purpleTheme";
  //     case ThemesKey.redTheme:
  //       return "redTheme";
  //     default:
  //       return "pinkTheme";
  //   }
  // }
}

class ThemeDataProvider extends ChangeNotifier {
  bool isTheme = true;
  String themeName = ThemesKey.pinkTheme.name;
  ThemeData get themeColor {
    try {
      bool isHave = getIt<ISharedPref>().containsKey(SharedPrefKeys.theme.name);
      if (isHave) {
        themeName = getIt<ISharedPref>().getString(SharedPrefKeys.theme.name) ?? "pinkTheme";
        return switchCase(themeName);
      } else {
        return ThemeSelection().pinkTheme;
      }
    } catch (e) {
      return ThemeSelection().pinkTheme;
    }
  }

  ThemeData switchCase(String themeName) {
    switch (themeName) {
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

  ThemesKey get themesKey {
    String? name = getIt<ISharedPref>().getString(SharedPrefKeys.theme.name) ?? "pinkTheme";

    switch (name) {
      case "pinkTheme":
        return ThemesKey.pinkTheme;
      case "purpleTheme":
        return ThemesKey.purpleTheme;
      case "redTheme":
        return ThemesKey.redTheme;
      default:
        return ThemesKey.pinkTheme;
    }
  }

  Future<void> changeTheme() async {
    isTheme = !isTheme;
    await getIt<ISharedPref>().setBool(SharedPrefKeys.theme.name, isTheme);
    notifyListeners();
  }

  Future<void> changeThemes(ThemesKey key) async {
    await getIt<ISharedPref>().setString(SharedPrefKeys.theme.name, key.name);
    notifyListeners();
  }

  // Future<void> changeThemesData(String key) async {
  //   await getIt<ISharedPref>().setString(SharedPrefKeys.theme.name, key);
  //   notifyListeners();
  // }
}

getTheme() {
  return getIt<ISharedPref>().getBool(SharedPrefKeys.theme.name);
}
