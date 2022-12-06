import 'package:flutter/material.dart';

abstract class IAppTheme {
  ThemeData get pinkTheme;
  ThemeData get purpleTheme;
  ThemeData get redTheme;
}

class AppThemeImpl implements IAppTheme {
  @override
  ThemeData pinkTheme = ThemeData(
    primaryColor: Colors.pink,
    primarySwatch: Colors.pink,
    buttonTheme: const ButtonThemeData(
      buttonColor: Color.fromARGB(255, 235, 130, 165),
    ),
  );

  @override
  ThemeData purpleTheme = ThemeData(
    primaryColor: Colors.purple,
    primarySwatch: Colors.purple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.purpleAccent,
    ),
  );

  @override
  ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.redAccent,
    ),
  );
}
