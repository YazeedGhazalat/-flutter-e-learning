import 'package:flutter/material.dart';
import 'package:myapp/Courses/English4begginner.dart';
import 'package:myapp/Courses/EnglishL2.dart';
import 'package:myapp/Log_in/StartPage.dart';
import 'package:myapp/quizzes/Q1.dart';
import 'package:myapp/screens/DicoverPage.dart';
import 'package:myapp/screens/HomePage.dart';
import 'package:myapp/screens/MyCourse.dart';
import 'package:myapp/screens/edit.dart';
import 'package:myapp/screens/profile.dart';
import 'package:myapp/screens/quizPage.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
    routes: {
      "English4begginner": ((context) => English4begginner()),
      "InterMiediate": (context) => Intermidiate(),
      "Home": ((context) => Home()),
      "quizpage": ((context) => QuizPage()),
      "LevelQuiz": (context) => LevelQuiz(),
      "edit page": (context) => Edit_Profile(),
      "profile page": (context) => ProfilePage(),
      "MyCourse": (context) => MyCourse()
    },
    theme: ThemeData(primaryColor: Colors.green),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
