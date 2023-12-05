import 'package:flutter/material.dart';
import 'quiz_logic.dart'; // Import your QuizScreen widget or replace it with the correct path
import 'question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizScreen(), // Set the initial screen as your QuizScreen widget
    );
  }
}
