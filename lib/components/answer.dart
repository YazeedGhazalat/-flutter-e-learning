import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(answerText,
              style: TextStyle(color: Colors.black, fontFamily: "OpenSans")),
          onPressed: (() {
            selectHandler();
          }),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 40),
            backgroundColor: Colors.white,
          ),
        ));
  }
}
