import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/models/Links.dart';
import 'package:myapp/models/contentModulsTile.dart';

class Intermidiate extends StatefulWidget {
  const Intermidiate({super.key});

  @override
  State<Intermidiate> createState() => _IntermidiateState();
}

class _IntermidiateState extends State<Intermidiate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(context, "Home");
            }),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Intermediate English",
          style: TextStyle(color: Colors.black, fontFamily: "OpenSans"),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Content",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30, fontFamily: "OpenSans"),
            ),
          ),
          ModulesTile(
            myFunction: Unit1,
            myModuleColor: Colors.red,
            myModuleTitle: "Unit 1",
            myModulesSubTitle: "Do you need a hyphen?",
          ),
          ModulesTile(
            myFunction: Unit2,
            myModuleColor: Colors.blue,
            myModuleTitle: "Unit 2",
            myModulesSubTitle: "Present tenses",
          ),
          ModulesTile(
            myFunction: Unit3,
            myModuleColor: Colors.purple,
            myModuleTitle: "Unit 3",
            myModulesSubTitle: "The power of pop-ups",
          ),
          ModulesTile(
            myFunction: Unit4,
            myModuleColor: Colors.green,
            myModuleTitle: "Unit 4",
            myModulesSubTitle: "How to haggle",
          ),
          ModulesTile(
            myFunction: Unit5,
            myModuleColor: Colors.pink,
            myModuleTitle: "Unit 5",
            myModulesSubTitle: "New drama",
          ),
          ModulesTile(
            myFunction: Advance,
            myModuleColor: Colors.amber,
            myModuleTitle: "Advance",
            myModulesSubTitle: "Advance",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30, fontFamily: "OpenSans"),
            ),
          ),
          URLClass(
            myFunction: Email,
            myPlatformIcon: Ionicons.mail,
            myPlatformTitle: "Email",
            myPlatformSubTitle: "YazeedGhazalat@gmail.com",
          ),
          Divider(
              color: Colors.grey, thickness: 2, indent: 100, endIndent: 100),
          URLClass(
            myFunction: Phone,
            myPlatformIcon: Ionicons.call,
            myPlatformTitle: "Phone",
            myPlatformSubTitle: "+962780785310",
          ),
          Divider(
              color: Colors.grey, thickness: 2, indent: 100, endIndent: 100),
        ],
      ),
    );
  }
}
