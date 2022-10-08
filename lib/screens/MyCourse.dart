import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myapp/components/cours.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My Courses",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 30,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Course(
                iRate: 2.5,
                cImage: "images/2.png",
                cName: "English for begginner"),
            SizedBox(
              width: 10,
            ),
            Course(
                iRate: 4,
                cImage: "images/1.png",
                cName: "Intermediate English"),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Course(
              iRate: 5,
              cImage: "images/77.png",
              cName: "English Grammar",
            ),
            SizedBox(
              width: 10,
            ),
            Course(
              iRate: 5,
              cImage: "images/L.jpg",
              cName: "English literature",
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 15,
            ),
            Course(iRate: 3.5, cImage: "images/word.png", cName: "Words"),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
