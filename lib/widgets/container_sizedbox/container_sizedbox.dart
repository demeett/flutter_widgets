import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ContainerDemo(),
    );
  }
}

class ContainerSizedBoxMix extends StatelessWidget {
  const ContainerSizedBoxMix({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox.shrink(),
        const SizedBox.square(
          dimension: 100,
          child: Text("ddddddddddd"),
        ),
        Container(
          height: 200,
          color: Colors.red,
          constraints: const BoxConstraints(
              //maxHeight: 100
              ),
          child: SizedBox(
            child: Image.asset(
              "assets/images/profile_pic2.jpeg",
              //"assets/images/sushi.png",
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            constraints: const BoxConstraints(maxWidth: 200),
            decoration: ContDeco(),
            child: SizedBox(
              height: 200,
              width: 160,
              child: Image.asset("assets/images/profile_pic2.jpeg"),
            ))
      ],
    );
  }
}

class ConatainerDecoration extends BoxDecoration {
  static const containerDecoration = BoxDecoration(
      border: Border.fromBorderSide(BorderSide()),
      //Border.all(strokeAlign: StrokeAlign.outside, width: 3, color: Colors.green),
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
        )
      ],
      gradient: LinearGradient(colors: [Colors.white60, Colors.amber]));
}

class ContDeco extends BoxDecoration {
  ContDeco()
      : super(
            border: Border.fromBorderSide(BorderSide()),
            //Border.all(strokeAlign: StrokeAlign.outside, width: 3, color: Colors.green),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
              )
            ],
            gradient: LinearGradient(colors: [Colors.white60, Colors.amber]));
}

