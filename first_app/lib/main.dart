import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var answerIndex = 0;

  Widget build(BuildContext context) {
    void answerQuestions() {
      setState(() {
        questionIndex = questionIndex + 1;
      });
    }

    var questions = [
      {
        "questionText": "Mikä on lempivärisi?",
        "answers": ["Punaanen", "Viheriä", "Siniinen"]
      },
      {
        "questionText": "Mitä harrastat?",
        "answers": ["Lolia", "Salia", "Ryyppään"]
      },
      {
        "questionText": "Mikä on lempijoukkueesi?",
        "answers": ["KÄRPÄT", "Ilves", "TPS"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]["questionText"] as String,
            ),
            ...(questions[questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(answerQuestions, answer, Colors.green);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
