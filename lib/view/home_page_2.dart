import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';

class HomePageViewSecond extends StatelessWidget {
  const HomePageViewSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomRadioTile(
            themesKey: ThemesKey.pinkTheme,
            callBack: (key) {
              themeProvider.changeTheme(key);
              debugPrint("Theme Change : $key");
            },
          ),
          CustomRadioTile(
            themesKey: ThemesKey.purpleTheme,
            callBack: (key) {
              themeProvider.changeTheme(key);
              debugPrint("Theme Change : $key");
            },
          ),
          CustomRadioTile(
            themesKey: ThemesKey.redTheme,
            callBack: (key) {
              themeProvider.changeTheme(key);
              debugPrint("Theme Change : $key");
            },
          ),
        ],
      ),
    );
  }
}

typedef ThemeCallback = void Function(ThemesKey key);

class CustomRadioTile extends StatelessWidget {
  const CustomRadioTile({
    super.key,
    required this.themesKey,
    required this.callBack,
  });
  final ThemesKey themesKey;
  final ThemeCallback callBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(themesKey.name),
      leading: Radio<ThemesKey>(
        value: themesKey,
        groupValue: Provider.of<ThemeProvider>(context).theme,
        onChanged: (value) {
          callBack(themesKey);
        },
      ),
    );
  }
}
