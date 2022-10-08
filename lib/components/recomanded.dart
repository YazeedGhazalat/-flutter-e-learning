import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Recommanded extends StatefulWidget {
  Recommanded({required this.cImage, required this.cName, required this.iRate});
  String? cImage;
  String? cName;
  double iRate;
  @override
  State<Recommanded> createState() => _RecommandedState();
}

class _RecommandedState extends State<Recommanded> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: 140,
      height: 140,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15), // Image border
          child: Image.asset(
            widget.cImage.toString(),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          style: TextStyle(
              fontSize: 14, fontFamily: "OpenSans", color: Colors.black),
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
    );
  }
}
