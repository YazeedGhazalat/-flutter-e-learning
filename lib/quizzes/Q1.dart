import 'package:flutter/material.dart';
import 'package:myapp/components/result.dart';

import '../components/quiz.dart';

class LevelQuiz extends StatefulWidget {
  const LevelQuiz({super.key});

  @override
  State<LevelQuiz> createState() => _LevelQuizState();
}

class _LevelQuizState extends State<LevelQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1.She works ---- Saturday.',
      'answers': [
        {'text': 'at', 'score': 0},
        {'text': 'to', 'score': 0},
        {'text': 'in', 'score': 0},
        {'text': 'on', 'score': 20},
      ],
    },
    {
      'questionText': 'Q2.I stay at home ---- the morning.',
      'answers': [
        {'text': 'at', 'score': 0},
        {'text': 'to', 'score': 0},
        {'text': 'in', 'score': 20},
        {'text': 'on', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. How do you get to work? ----.',
      'answers': [
        {'text': 'By car', 'score': 20},
        {'text': 'In car', 'score': 0},
        {'text': 'By the car', 'score': 0},
        {'text': 'On car', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4.Do you like classical music? ----.',
      'answers': [
        {'text': 'Yes, I likes', 'score': 0},
        {'text': 'Yes, I like', 'score': 0},
        {'text': 'Yes, I does', 'score': 0},
        {'text': 'Yes, I do', 'score': 20},
      ],
    },
    {
      'questionText': 'Q5. Where is Mary? She ---- over there.',
      'answers': [
        {'text': 'is stand', 'score': 0},
        {'text': 'is standing', 'score': 20},
        {'text': 'stand', 'score': 0},
        {'text': 'standing', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Level Test',
          style: TextStyle(
              color: Colors.black,
              fontFamily: "OpenSans",
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
