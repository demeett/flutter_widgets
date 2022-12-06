import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemesKey thKey = ThemesKey.pinkTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // CustomSwitchListTile(textName: textName)
          ListTile(
            title: Text(ThemesKey.pinkTheme.name),
            leading: Radio<ThemesKey>(
              value: ThemesKey.pinkTheme,
              groupValue: Provider.of<ThemeDataProvider>(context).themesKey,
              onChanged: (value) {
                Provider.of<ThemeDataProvider>(context, listen: false).changeThemes(value ?? ThemesKey.pinkTheme);
              },
            ),
          ),
          ListTile(
            title: Text(ThemesKey.purpleTheme.name),
            leading: Radio<ThemesKey>(
              value: ThemesKey.purpleTheme,
              groupValue: Provider.of<ThemeDataProvider>(context).themesKey,
              onChanged: (value) {
                Provider.of<ThemeDataProvider>(context, listen: false).changeThemes(value ?? ThemesKey.pinkTheme);
              },
            ),
          ),
          ListTile(
            title: Text(ThemesKey.redTheme.name),
            leading: Radio<ThemesKey>(
              value: ThemesKey.redTheme,
              groupValue: Provider.of<ThemeDataProvider>(context).themesKey,
              onChanged: (value) {
                Provider.of<ThemeDataProvider>(context, listen: false).changeThemes(value ?? ThemesKey.pinkTheme);
              },
            ),
          )
        ],
      ),
    );
  }
}

class CustomSwitchListTile extends StatelessWidget {
  const CustomSwitchListTile({
    Key? key,
    required this.textName,
  }) : super(key: key);

  final String textName;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: Provider.of<ThemeDataProvider>(context).isTheme,
      onChanged: (_) {
        Provider.of<ThemeDataProvider>(context, listen: false).changeTheme();
      },
      title: Text(textName),
    );
  }
}

class CustumRadio extends StatefulWidget {
  CustumRadio(
      {super.key,
      required this.thKey,
      required this.title,
      required this.value,
      required this.gropValue,
      required this.function});
  final String title;

  ThemesKey value;
  ThemesKey gropValue;
  ThemesKey thKey;
  VoidCallback function;
  @override
  State<CustumRadio> createState() => _CustumRadioState();
}

class _CustumRadioState extends State<CustumRadio> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: Radio<ThemesKey>(
        value: widget.value,
        groupValue: widget.thKey,
        onChanged: (value) {
          widget.function;
        },
      ),
    );
  }
}
