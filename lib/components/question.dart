import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 150),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/sl_030720_28740_16.jpg"),
              fit: BoxFit.cover),
          color: Color.fromARGB(255, 76, 175, 145),
          border: Border.all(width: 3),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              offset: Offset(0, 50),
              blurRadius: 100,
            )
          ]),
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 25,
            fontFamily: "OpenSans"),
        textAlign: TextAlign.center,
      ),
    );
  }
}
