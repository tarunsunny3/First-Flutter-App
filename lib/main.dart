// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  class MyAppState extends State{
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      "What's your favorite color?",
      'What is your favorite cuisine?'
    ];
    void onPressedButton() {
      print("clicked");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(0)),
            ElevatedButton(
              onPressed: () => print("clicked button 1"),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: onPressedButton,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: onPressedButton,
              child: const Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: onPressedButton,
              child: const Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
  }
}
