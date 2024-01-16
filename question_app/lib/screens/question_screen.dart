import 'package:flutter/material.dart';

import 'package:question_app/components/answer_buttons.dart';
import 'package:question_app/components/styled_text.dart';
import 'package:question_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.answer, {super.key});

  final void Function(String) answer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.text, 24, 'Lato'),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(text: answer, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
