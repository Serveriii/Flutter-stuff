import 'package:flutter/material.dart';
import 'package:question_app/screens/question_screen.dart';
import 'package:question_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";
  final List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(122, 1, 170, 1),
                Color.fromARGB(255, 14, 1, 61)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : QuestionScreen(chooseAnswer),
        ),
      ),
    );
  }
}
