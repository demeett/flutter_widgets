import 'package:flutter/material.dart';
import 'package:flutter_widget/theme/theme_color_selection.dart';
import 'package:provider/provider.dart';

class HomePageViewSecond extends StatefulWidget {
  const HomePageViewSecond({super.key});

  @override
  State<HomePageViewSecond> createState() => _HomePageViewSecondState();
}

class _HomePageViewSecondState extends State<HomePageViewSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(
          title: Text(ThemesKey.pinkTheme.name),
          leading: Radio<ThemeData>(
            value: ThemeSelection().pinkTheme,
            groupValue: Provider.of<ThemeColorSelection>(context).themeColor,
            onChanged: (value) {
              Provider.of<ThemeColorSelection>(context, listen: false).changeThemesData(value?.getName() ?? "");
            },
          ),
        ),
        ListTile(
          title: Text(ThemesKey.purpleTheme.name),
          leading: Radio<ThemeData>(
            value: ThemeSelection().purpleTheme,
            groupValue: Provider.of<ThemeColorSelection>(context).themeColor,
            onChanged: (value) {
              Provider.of<ThemeColorSelection>(context, listen: false).changeThemesData(value?.getName() ?? "");
            },
          ),
        ),
        ListTile(
          title: Text(ThemesKey.redTheme.name),
          leading: Radio<ThemeData>(
            value: ThemeSelection().redTheme,
            groupValue: Provider.of<ThemeColorSelection>(context).themeColor,
            onChanged: (value) {
              Provider.of<ThemeColorSelection>(context, listen: false).changeThemesData(value?.getName() ?? "");
            },
          ),
        ),

       // CustomDropDown(title: ThemesKey.redTheme.name, value: ThemeSelection().redTheme, gropValue: Provider.of<ThemeColorSelection>(context).themeColor, selectTheme: Provider.of<ThemeColorSelection>(context, listen: false).changeThemesData(value?.getName() ?? ""))

      ]),
    );
  }
}

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {super.key,
      required this.title,
      required this.value,
      required this.gropValue,
      required this.selectTheme,
     });
  final String title;
  final ThemeData value;
  final ThemeData gropValue;
  final void Function(ThemeData object) selectTheme;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  void hello(ThemeData data) {
    widget.selectTheme.call(data);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: Radio<ThemeData>(
        value: widget.value,
        groupValue: widget.gropValue,
        onChanged: (value) {
          hello;
        },
      ),
    );
  }
}
