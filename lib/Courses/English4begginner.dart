import 'package:flutter/material.dart';
import 'package:myapp/models/Links.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/models/contentModulsTile.dart';
import 'package:myapp/models/videoHome.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> YouTube() async {
  if (!await launchUrl(YouTube_url)) {
    throw 'Could not launch $YouTube_url';
  }
}

final Uri YouTube_url = Uri.parse(
    "https://www.researchgate.net/publication/343022278_ENGLISH_LANGUAGE_COURSE_FOR_BEGINNERS_English_Language%27s_Four_Modes_For_Beginners");
void vid(String uri) {}

class English4begginner extends StatefulWidget {
  const English4begginner({super.key});

  @override
  State<English4begginner> createState() => _English4begginnerState();
}

class _English4begginnerState extends State<English4begginner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, "Home");
            }),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "English for begginner",
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
            myFunction: Intro,
            myModuleColor: Colors.amber,
            myModuleTitle: "Introduction",
            myModulesSubTitle: "Ice-Breakers and Orientation",
          ),
          ModulesTile(
            myFunction: module1,
            myModuleColor: Colors.red,
            myModuleTitle: "Module 1",
            myModulesSubTitle: "Work Time, Free Time",
          ),
          ModulesTile(
            myFunction: module2,
            myModuleColor: Colors.blue,
            myModuleTitle: "Module 2",
            myModulesSubTitle: "I Like It",
          ),
          ModulesTile(
            myFunction: module3,
            myModuleColor: Colors.purple,
            myModuleTitle: "Module 3",
            myModulesSubTitle: "Let's Go Out Tonight",
          ),
          ModulesTile(
            myFunction: module4,
            myModuleColor: Colors.green,
            myModuleTitle: "Module 4",
            myModulesSubTitle: "Is There a Doctor?",
          ),
          ModulesTile(
            myFunction: module5,
            myModuleColor: Colors.pink,
            myModuleTitle: "Module 5",
            myModulesSubTitle: "Thinking of Tomorrow",
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
