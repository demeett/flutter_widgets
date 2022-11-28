import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/card/card_learn_view.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Align(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(WidgetSizes.imageSushi),
                ),
              ),
              //Image.asset(WidgetSizes.imageSushi),
              onTap: () {},
              subtitle: const Text("Sushi"),
              leading: const Icon(Icons.subject),
              trailing: const Icon(Icons.border_left),
            ),
          )
        ],
      ),
    );
  }
}
