import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:ionicons/ionicons.dart';

class Words extends StatefulWidget {
  const Words({super.key});

  @override
  State<Words> createState() => _WordsState();
}

String myWord = "";
late TextEditingController i;

final TextEditingController _controller = TextEditingController();

class _WordsState extends State<Words> {
  final List<String> words = nouns.take(150).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, "Home");
            }),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "English for begginner",
          style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // controller: controller,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "150 Different word",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontFamily: "OpenSans"),
                ),
              ),
              for (int i = 0; i < 150; i++) ...[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 50),
                        blurRadius: 100,
                      )
                    ],
                  ),
                  height: 100,
                  width: 290,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "${i + 1} : ${words[i].toUpperCase()}  ",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  thickness: 1,
                )
              ]
            ],
          )),
    );
  }
}
