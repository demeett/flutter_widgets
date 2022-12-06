import 'package:flutter/material.dart';
import 'package:flutter_widget/locator.dart';
import 'package:flutter_widget/logic/shared_pref/shared_pref.dart';
import 'package:flutter_widget/theme/theme_color_selection.dart';
import 'package:flutter_widget/view/home_page_2.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await getIt<ISharedPref>().init();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeColorSelection(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeColorSelection>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: value.themeColor,
          home: const HomePageViewSecond(),
        );
      },
    );
  }
}
