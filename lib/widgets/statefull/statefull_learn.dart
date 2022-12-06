import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;
  void incrementValue() {
    setState(() {
      countValue = countValue + 1;
    });
  }

  void decrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              incrementValue();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              decrementValue();
            },
            child: const Icon(Icons.remove),
          )
          // IncrementButton(
          //   func: incrementValue,
          // ),
          // DecrementButton(
          //   func: decrementValue,
          // ),
        ],
      ),
      body: Center(
          child: Text(
        countValue.toString(),
      )),
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({
    Key? key,
    required this.func,
  }) : super(key: key);
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: () {
        func;
      },
      child: const Icon(Icons.remove),
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    Key? key,
    required this.func,
  }) : super(key: key);
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        func;
      },
      child: const Icon(Icons.add),
    );
  }
}
