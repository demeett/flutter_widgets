import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(child: FlutterLogo()),
          const FlutterLogo(),
          const FlutterLogo(),
          const FlutterLogo(),
          const FlutterLogo(),
          const FlutterLogo(),
          Expanded(
            child: Row(
              children: const [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
