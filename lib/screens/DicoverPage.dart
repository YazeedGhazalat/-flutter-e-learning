import 'package:flutter/material.dart';
import 'package:myapp/components/tile.dart';
import 'package:myapp/screens/HomePage.dart';
import 'package:myapp/screens/MyCourse.dart';
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
    MyCourse(),
    QuizPage(),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "Home"),
        child: Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor: Colors.pink,
      ),
      drawerEnableOpenDragGesture: true,
      drawerEdgeDragWidth: 20,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz_outlined),
            label: 'Quiz',
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
