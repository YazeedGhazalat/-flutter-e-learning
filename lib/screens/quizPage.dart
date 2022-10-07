import 'package:flutter/material.dart';

import 'package:myapp/models/quizButton.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Quizzes:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30, fontFamily: "OpenSans"),
              ),
            ),
          ],
        ),
        quizButton(
          quizName: "English Level Test",
          quizPage: "LevelQuiz",
        )
      ],
    );
  }
}
