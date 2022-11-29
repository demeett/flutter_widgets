import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Hello Welcome to My App",
            style: TextStyle(color: Colors.red, wordSpacing: 3, letterSpacing: 10, fontSize: 24),
          ),
          Text(
            ("Tracking your task easily " * 10),
            style: const TextStyle(wordSpacing: 2, letterSpacing: 1, color: Colors.pinkAccent),
          ),
          const Text(
            ("Are you often late for things like being late for important meetings and deadlines, or are you confused about how to keep track of the projects you're working on? then I suggest you check out my new exploration of task app. This app will allow you to keep track of the projects you are working on and can also help you manage your time management even better"),
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15,
                wordSpacing: 2,
                letterSpacing: 2,
                color: Colors.black),
            maxLines: 3,
            
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
