import 'package:flutter/material.dart';
import 'package:flutter_widget/logic/enum/enum.dart';

class DropDownEnumView extends StatelessWidget {
  const DropDownEnumView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("helleo"),
      ),
      body: Column(
        children: [
          DropdownButton(
              items: ColorEnum.values.map((ColorEnum takim) {
                // 3
                return DropdownMenuItem<ColorEnum>(
                  value: takim,
                  child: Text(
                    takim.name,
                    style: const TextStyle(color: Colors.red),
                  ), //6
                );
              }).toList(),
              onChanged: (value) {}),
          KumasTipi.sentetik.toText()
        ],
      ),
    );
  }
}

enum ColorEnum { black, pink, red, yellow, purple, green, grey }
