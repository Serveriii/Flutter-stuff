import 'package:flutter/material.dart';
import 'package:question_app/components/styled_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (element) {
            return Row(
              children: [
                Text(((element['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      StyledText(element['question'] as String, 14, 'Lato',
                          Colors.white),
                      const SizedBox(height: 5),
                      StyledText(element['chosen_answer'] as String, 12, 'Lato',
                          const Color.fromARGB(255, 112, 219, 223)),
                      StyledText(element['correct_answer'] as String, 12,
                          'Lato', const Color.fromARGB(255, 45, 219, 59))
                    ],
                  ),
                ),
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
