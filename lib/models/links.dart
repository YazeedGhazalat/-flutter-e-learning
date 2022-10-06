import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com/yazeed.ghazalat');
final Uri Instagram_url =
    Uri.parse('https://www.instagram.com/yazeed_ghazalat/');
final Uri LinkedIN_url =
    Uri.parse('https://www.linkedin.com/in/yazeed-ghazalat-205111161');
final Uri ourLocation_url = Uri.parse('https://goo.gl/maps/CnFADFJpFDvj4Azt6');
final Uri pdf_url = Uri.parse('PDF/3Reading.pdf');
final Uri Email_url = Uri.parse('mailto:yazeedghazalat@gmail.com');
final Uri Phone_url = Uri.parse('tel:+962780785310');
Future<void> Facebook() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> Instagram() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

Future<void> LinkedIN() async {
  if (!await launchUrl(LinkedIN_url)) {
    throw 'Could not launch $LinkedIN_url';
  }
}

Future<void> ourLocation() async {
  if (!await launchUrl(ourLocation_url)) {
    throw 'Could not launch $ourLocation_url';
  }
}

class URLClass extends StatelessWidget {
  URLClass(
      {required this.myFunction,
      required this.myPlatformIcon,
      required this.myPlatformSubTitle,
      required this.myPlatformTitle});
  String? myPlatformTitle;
  String? myPlatformSubTitle;
  IconData? myPlatformIcon;
  Function()? myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 221, 178, 26),
              Color.fromARGB(255, 253, 135, 0),
              //Color.fromARGB(255, 221, 178, 26),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
          ),
          color: Colors.white.withOpacity(0.9),
        ),
        child: ListTile(
          title: Text(
            "$myPlatformTitle",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Text(
            "$myPlatformSubTitle",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          leading: Icon(
            myPlatformIcon,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
