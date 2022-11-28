import 'package:flutter/material.dart';

class StackDemoFirst extends StatelessWidget {
  const StackDemoFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand, //greycolorın tüm alanı kaplamasını sağlar.
      children: [
        Positioned.fill(
            child: Image.asset(
          "assets/images/grey_color.jpeg",
          fit: BoxFit.fill,
        )),
        const Text("Hello beybe"),
        const SizedBox(child: Text("Hello beybe")),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Kaldım uzak"),
        ),

        // Image.asset(
        //   "assets/images/sushi.png",
        //   fit: BoxFit.fill,
        // )
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                    bottom: 25,
                    child: Image.network(
                      "https://picsum.photos/200/200",
                      fit: BoxFit.fill,
                    )),
                const Positioned(
                    height: 50,
                    width: 200,
                    // right: 30,
                    // left: 30,
                    bottom: 0,
                    //top: 0,
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                    ))
              ],
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }
}