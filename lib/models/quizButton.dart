import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class quizButton extends StatefulWidget {
  quizButton(
      {required this.quizName, required this.quizPage, required this.Qcolor});
  String? quizName;
  String? quizPage;
  Color? Qcolor;

  @override
  State<quizButton> createState() => _quizButtonState();
}

class _quizButtonState extends State<quizButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, widget.quizPage.toString());
      }),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.4),
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 70,
              child: Row(
                children: [
                  Container(
                    color: widget.Qcolor,
                    width: 70,
                    height: 70,
                    child: Icon(Ionicons.extension_puzzle, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.quizName.toString(),
                            style: TextStyle(
                                fontFamily: "OpenSans", fontSize: 17)),
                        Text('One-Way MQ',
                            style: TextStyle(
                                color: Colors.grey, fontFamily: "OpenSans"))
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.blue),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
