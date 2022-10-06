import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Course extends StatefulWidget {
  Course({required this.cImage, required this.cName, required this.iRate});
  String? cImage;
  String? cName;
  double iRate;
  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (widget.cName.toString() == "English for begginner")
          Navigator.pushNamed(context, "English4begginner");
        if (widget.cName.toString() == "Intermediate English")
          Navigator.pushNamed(context, "InterMiediate");
        if (widget.cName.toString() == "") Navigator.pushNamed(context, "");
        if (widget.cName.toString() == "") Navigator.pushNamed(context, "");
        if (widget.cName.toString() == "") Navigator.pushNamed(context, "");
      }),
      child: Container(
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
        width: 180,
        height: 180,
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: Image.asset(widget.cImage.toString(),
                fit: BoxFit.fill, width: double.infinity),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            style: TextStyle(fontSize: 15, fontFamily: "OpenSans"),
            widget.cName.toString(),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 2,
          ),
          RatingBar.builder(
            allowHalfRating: true,
            initialRating: widget.iRate.toDouble(),
            ignoreGestures: true,
            itemSize: 18,
            itemPadding: EdgeInsets.symmetric(horizontal: 0.4),
            itemBuilder: (context, _) => Icon(
              Icons.star_rate,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          )
        ]),
      ),
    );
  }
}
