import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/Catalog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        SizedBox(height: 30),
        Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hey Learner",
                style:
                    GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 40),
              ),
              Text(
                "Find a course you want to learn",
                style:
                    GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 25),
              ),
            ],
          ),
        ),
        SizedBox(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 201, 197, 197),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(width: 16),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Text(
                "Search for anything",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Courses Catogories",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.grey),
            ),
            Icon(
              Icons.arrow_downward_sharp,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(height: 30),
        Container(
          child: Column(children: [
            Catalog(
              "https://cdn.dribbble.com/users/218750/screenshots/1589027/media/eb11ea5dfe1a0fecd7a10ad96c7a8373.gif?compress=1&resize=600x450",
              "Beginner",
              "English C",
              "10usd",
            ),
            Catalog(
              "https://i.ytimg.com/vi/0pxa_0wXhqk/maxresdefault.jpg",
              "Basic",
              "English B",
              "20usd",
            ),
            Catalog(
              "https://www.mihanenglish.ir/home/sites/default/files/styles/book_full_cover/public/2020-03/9fb5aqgtry6z1k8u.jpg?itok=THXab53Y",
              "Intermediate",
              "English A",
              "25usd",
            ),
            Catalog(
              "https://i.ytimg.com/vi/ykj2kubG2kU/maxresdefault.jpg",
              "Advanced",
              "English A+",
              "30usd",
            ),
          ]),
        )
      ]),
    );
  }
}
