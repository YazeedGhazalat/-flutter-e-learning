import 'package:flutter/material.dart';
import 'package:myapp/components/result.dart';

import '../components/quiz.dart';

class Level2Quiz extends StatefulWidget {
  const Level2Quiz({super.key});

  @override
  State<Level2Quiz> createState() => _Level2QuizState();
}

class _Level2QuizState extends State<Level2Quiz> {
  final _questions = const [
    {
      'questionText': 'Q1.I __________________ TV when the telephone rang.',
      'answers': [
        {'text': 'Watched', 'score': 0},
        {'text': 'Was Watching', 'score': 2},
        {'text': 'Are Watching', 'score': 0},
        {'text': 'Have Watched', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. I am afraid I am not hungry. I have _______ eaten lunch.',
      'answers': [
        {'text': 'Yet', 'score': 0},
        {'text': 'Still', 'score': 0},
        {'text': 'Already', 'score': 2},
        {'text': 'Ever', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. Would you like ___________ chicken?',
      'answers': [
        {'text': 'Any', 'score': 0},
        {'text': 'Some', 'score': 2},
        {'text': 'A', 'score': 0},
        {'text': 'One', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4.She _________________ lunch by the time we arrived.',
      'answers': [
        {'text': 'Had Finished', 'score': 2},
        {'text': 'Finished', 'score': 0},
        {'text': 'Have Finished', 'score': 0},
        {'text':'Finishing', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. What shall we do tonight? How about ___________ a film?',
      'answers': [
        {'text': 'To See', 'score': 0},
        {'text': 'See', 'score': 0},
        {'text': 'Seeing', 'score': 2},
        {'text': 'Going', 'score': 0},
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
