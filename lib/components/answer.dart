import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.all(8),
        height: 90,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(answerText,
              style: TextStyle(
                  color: Colors.black, fontFamily: "OpenSans", fontSize: 25)),
          onPressed: (() {
            selectHandler();
          }),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(50),
            backgroundColor: MaterialStateProperty.all((Colors.white)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
          ),
        ));
  }
}
