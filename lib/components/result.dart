import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans",
            ),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans",
            ),
            textAlign: TextAlign.center,
          ), //Text
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: (() {
              resetHandler();
            }),
            style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.amber,
                minimumSize: Size(180, 50),
                maximumSize: Size(190, 250)),
            icon: Icon(Ionicons.repeat),
            label: Text(
              "Restart Quiz",
              style: TextStyle(fontFamily: "OpenSans", fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.red,
                minimumSize: Size(180, 50),
                maximumSize: Size(190, 250)),
            onPressed: (() {
              Navigator.pop(context, "Home");
            }),
            icon: Icon(Ionicons.exit),
            label: Text(
              "Back Home",
              style: TextStyle(fontFamily: "OpenSans", fontSize: 20),
            ),
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
