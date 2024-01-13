import 'package:flutter/material.dart';
import 'package:question_app/components/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            const StyledText('Learn Flutter the fun way!', 26),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Color.fromARGB(255, 222, 187, 255), width: 2),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const StyledText("Start Quiz", 15),
            ),
          ],
        ),
      );
}
