import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/cours.dart';
import 'package:myapp/components/recomanded.dart';

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
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
                    height: 170,
                    // padding: EdgeInsets.only(left: 15),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Row(
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
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: StadiumBorder(),
                                            backgroundColor: Color.fromARGB(
                                                    255, 215, 230, 255)
                                                .withOpacity(1)),
                                        onPressed: (() {}),
                                        child: Text(
                                          "Watch now",
                                          style: TextStyle(
                                              fontFamily: "opensans",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.blue),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            // padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/previews/006/275/315/original/a-boy-read-books-on-white-background-free-vector.jpg")
                                    // image: AssetImage("images/1.webp"),
                                    ),
                              ),
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: Offset(0, 50),
                    blurRadius: 100,
                  )
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Recommanded(
                        cImage: "images/L.jpg",
                        cName: "English literature",
                        iRate: 5),
                    SizedBox(
                      width: 10,
                    ),
                    Recommanded(
                        cImage: "images/77.png",
                        cName: "English Grammar",
                        iRate: 5),
                    SizedBox(
                      width: 10,
                    ),
                    Recommanded(
                        cImage: "images/L.jpg",
                        cName: "English literature",
                        iRate: 5),
                    SizedBox(
                      width: 10,
                    ),
                    Recommanded(
                        cImage: "images/L.jpg",
                        cName: "English literature",
                        iRate: 5),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 50),
                        blurRadius: 100,
                      )
                    ],
                  ),
                  width: 130,
                  height: 130,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/9.jpg"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "opensans",
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 50),
                        blurRadius: 100,
                      )
                    ],
                  ),
                  width: 130,
                  height: 130,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/6.jpg"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Quiz",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "opensans",
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 50),
                        blurRadius: 100,
                      )
                    ],
                  ),
                  width: 268,
                  height: 120,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/3.jpg"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Library",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "opensans",
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
