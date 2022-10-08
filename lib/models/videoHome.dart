import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> YouTube1() async {
  if (!await launchUrl(YouTube_url)) {
    throw 'Could not launch $YouTube_url';
  }
}

final Uri YouTube_url = Uri.parse("https://youtu.be/WqqWekCaxGs");

// ignore: must_be_immutable
class Videos extends StatelessWidget {
  Videos({
    required this.myFunction,
    required this.myPlatformTitle,
  });

  String? myPlatformTitle;
  Function()? myFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: Color.fromARGB(255, 215, 230, 255).withOpacity(1)),
      onPressed: myFunction,
      child: Text(
        "$myPlatformTitle",
        style: TextStyle(
            fontFamily: "opensans",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.blue),
      ),
    );
  }
}
