import 'package:flutter/material.dart';
import 'package:myapp/components/recomanded.dart';
import 'package:myapp/models/videoHome.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Library_url = Uri.parse('https://chestofbooks.com/');
Future<void> Library() async {
  if (!await launchUrl(Library_url)) {
    throw 'Could not launch $Library_url';
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, "Home"),
        label: const Text(
          'Discover Our App',
          style: TextStyle(fontFamily: "OpenSans"),
        ),
        icon: const Icon(Icons.start),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/homePage.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, 0),
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
                                      Videos(
                                        myFunction: YouTube1,
                                        myPlatformTitle: "Watch Now",
                                      )
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
                                    image: AssetImage("images/4.png"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Recommended Courses:",
                    style: TextStyle(fontSize: 20, fontFamily: "OpenSans"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
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
                              cImage: "images/5.png",
                              cName: "Conversation",
                              iRate: 5),
                          SizedBox(
                            width: 10,
                          ),
                          Recommanded(
                              cImage: "images/1.jpg", cName: "TOFL", iRate: 5),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "DescoverPage"),
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, 0),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "DescoverPage"),
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, 0),
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
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: Library,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            offset: Offset(0, 0),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
