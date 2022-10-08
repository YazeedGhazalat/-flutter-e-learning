import 'package:flutter/material.dart';
import 'package:myapp/components/result.dart';

import '../components/quiz.dart';

class Level3Quiz extends StatefulWidget {
  const Level3Quiz({super.key});

  @override
  State<Level3Quiz> createState() => _Level3QuizState();
}

class _Level3QuizState extends State<Level3Quiz> {
  final _questions = const [
    {
      'questionText': 'Q1.____ your help, I would never have managed.',
      'answers': [
        {'text': 'But For', 'score': 0},
        {'text': 'Not', 'score': 0},
        {'text': 'Unless', 'score': 0},
        {'text': 'Despite', 'score': 2},
      ],
    },
    {
      'questionText': 'Q2. Only when ____ left, did we notice what she had done.',
      'answers': [
        {'text': 'Did She', 'score': 0},
        {'text': 'She Did', 'score': 0},
        {'text': 'She Had', 'score': 2},
        {'text': 'Had She', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. It is high time you ____ that',
      'answers': [
        {'text': 'Stop', 'score': 2},
        {'text': 'To Stop', 'score': 0},
        {'text': 'Stopped', 'score': 0},
        {'text': 'Stopping', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4.If he ___, I will not stay.',
      'answers': [
        {'text': 'Come', 'score': 0},
        {'text': 'Comes', 'score': 2},
        {'text': 'Came', 'score': 0},
        {'text':'Will Come', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5.The negative of noble is ___-',
      'answers': [
        {'text': 'Innoble', 'score': 0},
        {'text': 'Unnoble', 'score': 0},
        {'text': 'Disnoble', 'score': 2},
        {'text': 'Ignoble', 'score': 0},
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
