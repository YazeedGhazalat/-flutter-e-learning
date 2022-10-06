import 'package:flutter/material.dart';
import 'package:myapp/Courses/English4begginner.dart';
import 'package:myapp/Courses/EnglishL2.dart';
import 'package:myapp/screens/Home.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
    routes: {
      "English4begginner": ((context) => English4begginner()),
      "InterMiediate": (context) => Intermidiate(),
      "Home": ((context) => Home()),
    },
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
    return Home();
  }
}
