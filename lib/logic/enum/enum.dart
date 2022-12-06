import 'package:flutter/material.dart';

void main(List<String> args) {
  //Map işlemi
  List<String> dizi = KumasTipi.values.map((kumas) => kumas.name).toList();
  //bool extension kullanımı
  bool val = false;
  print(val.intValue);

  //Stringle extension kullanımı
  String name = "dolar/elma/";
 
}

//Hazır enum ve extensionı
enum KumasTipi {
  yunlu,
  pamuklu,
  sentetik,
  keten,
}

extension ExtensionKumasTipi on KumasTipi {
  String kumaslar() {
    return name;
  }

  Widget toText() {
    return Text(kumaslar());
  }
}

//BuildContext için extension
extension ExtensionBuildContext on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

//bool için extensionü
extension Extensionbool on bool {
  int get intValue => this == true ? 1 : 0;
}

extension ExtensionList on String {
  List get splitMethod => split('/');
  List me() {
    return split('/');
  }
}

//EdgeInsets extends
class PagePadding extends EdgeInsets {
  const PagePadding.tum() : super.all(10);
}
