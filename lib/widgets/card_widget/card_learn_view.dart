import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(children: const [
      Card(child: SizedBox(
        height: 100,width: 100,
      ),)
    ]),
    
    );
  }
}