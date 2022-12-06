import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'locator.dart';
import 'logic/shared_pref/shared_pref.dart';
import 'theme/app_theme.dart';
import 'theme/theme_provider.dart';
import 'view/home_page_2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await getIt<ISharedPref>().init();
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(
        appTheme: getIt<IAppTheme>(),
        sharedPref: getIt<ISharedPref>(),
      )..init(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, vm, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: vm.themeData,
          home: const HomePageViewSecond(),
        );
      },
    );
  }
}
