import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Intro_url = Uri.parse('https://youtu.be/UnEmEbWytI8');
final Uri module1_url =
    Uri.parse('https://www.examenglish.com/vocabulary/b1_hobbies.htm');

final Uri module2_url = Uri.parse(
    'https://www.examenglish.com/B1/b1_listening_describing_people.htm');
final Uri module3_url = Uri.parse('https://youtu.be/xmzLIgoQnAk');
final Uri module4_url = Uri.parse('https://youtu.be/bJRHDihM5LM');
final Uri module5_url =
    Uri.parse('https://www.esl-lab.com/basic-english/job-search-2/');
final Uri unit1_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-1/session-1');
final Uri unit2_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-1/session-2');
final Uri unit3_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-1/session-3');
final Uri unit4_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-1/session-4');
final Uri unit5_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-1/session-5');
final Uri Advance_url = Uri.parse(
    'https://www.bbc.co.uk/learningenglish/english/course/intermediate/unit-2');
Future<void> module1() async {
  if (!await launchUrl(module1_url)) {
    throw 'Could not launch $module1_url';
  }
}

Future<void> Intro() async {
  if (!await launchUrl(Intro_url)) {
    throw 'Could not launch $Intro_url';
  }
}

Future<void> module2() async {
  if (!await launchUrl(module2_url)) {
    throw 'Could not launch $module2_url';
  }
}

Future<void> module3() async {
  if (!await launchUrl(module3_url)) {
    throw 'Could not launch $module3_url';
  }
}

Future<void> module4() async {
  if (!await launchUrl(module4_url)) {
    throw 'Could not launch $module4_url';
  }
}

Future<void> module5() async {
  if (!await launchUrl(module5_url)) {
    throw 'Could not launch $module5_url';
  }
}

Future<void> Unit1() async {
  if (!await launchUrl(unit1_url)) {
    throw 'Could not launch $unit1_url';
  }
}

Future<void> Unit2() async {
  if (!await launchUrl(unit2_url)) {
    throw 'Could not launch $unit2_url';
  }
}

Future<void> Unit3() async {
  if (!await launchUrl(unit3_url)) {
    throw 'Could not launch $unit3_url';
  }
}

Future<void> Unit4() async {
  if (!await launchUrl(unit4_url)) {
    throw 'Could not launch $unit4_url';
  }
}

Future<void> Unit5() async {
  if (!await launchUrl(unit5_url)) {
    throw 'Could not launch $unit5_url';
  }
}

Future<void> Advance() async {
  if (!await launchUrl(Advance_url)) {
    throw 'Could not launch $Advance_url';
  }
}

class ModulesTile extends StatelessWidget {
  ModulesTile(
      {required this.myFunction,
      required this.myModulesSubTitle,
      required this.myModuleTitle,
      required this.myModuleColor});

  String? myModuleTitle;
  String? myModulesSubTitle;
  Color? myModuleColor;
  Function()? myFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: myFunction,
      leading: Container(
          child: Icon(Ionicons.book),
          width: 70,
          height: 70,
          color: myModuleColor),
      title: Text("$myModuleTitle"),
      subtitle: Text("$myModulesSubTitle"),
      isThreeLine: true,
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
    );
  }
}
