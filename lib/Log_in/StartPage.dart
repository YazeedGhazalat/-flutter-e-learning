import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Log_in/log_in.dart';

import 'package:myapp/screens/HomePage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Log_in();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/startPAge.png"))),
    ));
  }
}
