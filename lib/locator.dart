// This is our global ServiceLocator
import 'package:flutter_widget/logic/shared_pref/shared_pref.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<ISharedPref>(SharedPrefImpl());
  
}
