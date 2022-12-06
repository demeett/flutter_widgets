import 'package:get_it/get_it.dart';

import 'logic/shared_pref/shared_pref.dart';
import 'theme/app_theme.dart';

// This is our global ServiceLocator
GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<ISharedPref>(SharedPrefImpl());
  getIt.registerSingleton<IAppTheme>(AppThemeImpl());
}
