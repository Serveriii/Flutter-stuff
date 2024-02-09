import 'package:flutter/material.dart';
import 'package:question_app/components/questions_summary.dart';
import 'package:question_app/data/questions.dart';
import 'package:question_app/components/styled_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.buttonFunction,
      {super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final void Function() buttonFunction;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'chosen_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(
                'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
                18,
                'Lato',
                Colors.white),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  buttonFunction();
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh, color: Colors.white),
                    SizedBox(width: 5),
                    StyledText('Restart Quiz', 18, 'Lato', Colors.white),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
