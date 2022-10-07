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
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/Home.jpg",
              ),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Find Your Courses",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          offset: Offset(0, 50),
                          blurRadius: 100,
                        )
                      ],
                    ),
                    width: 300,
                    height: 150,
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Especially For You',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "opensans",
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Two new sectionsn \n and many topics.',
                              style: TextStyle(
                                  fontFamily: "opensans",
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 215, 230, 255)
                                              .withOpacity(1)),
                                  onPressed: (() {}),
                                  child: Text(
                                    "Watch now",
                                    style: TextStyle(
                                        fontFamily: "opensans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.blue),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
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
                  width: 120,
                  height: 120,
                ),
                SizedBox(
                  width: 10,
                ),
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
                  width: 120,
                  height: 120,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  width: 120,
                  height: 120,
                ),
                SizedBox(
                  width: 10,
                ),
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
                  width: 120,
                  height: 120,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
