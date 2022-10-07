import 'package:flutter/material.dart';
import 'package:myapp/components/tile.dart';
import 'package:myapp/screens/HomePage.dart';
import 'package:myapp/screens/MyCourse.dart';
import 'package:myapp/screens/WordsPage.dart';
import 'package:myapp/screens/profile.dart';
import 'package:myapp/screens/quizPage.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "OpenSans");
  static const List<Widget> _widgetOptions = [
    HomePage(),
    MyCourse(),
    QuizPage(),
    Words(),
    ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      drawerEdgeDragWidth: 20,
      drawer: Drawer(
        width: double.infinity,
        backgroundColor: const Color.fromARGB(255, 186, 203, 212),
        child: ListView(
          children: [
            Container(
                height: 200,
                margin: const EdgeInsets.only(top: 40),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text("Amer Melhem",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    )
                  ],
                )),
            MyTile(LineIcons.userCircle, "Edit Profile", LineIcons.arrowRight,
                () {
              Navigator.of(context).pushNamed("profile page");
            }),
            MyTile(LineIcons.fileDownload, "Download Courses",
                LineIcons.arrowRight, () {}),
            MyTile(
                LineIcons.key, "Change Password", LineIcons.arrowRight, () {}),
            MyTile(Icons.logout_rounded, "Log Out", LineIcons.arrowRight, () {})
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leadingWidth: 50,
        title: Text(
          "SAMY",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (() {}), icon: Icon(Icons.search), color: Colors.grey),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz_outlined),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wordpress),
            label: 'Words',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
      body: ListView(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
