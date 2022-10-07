import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/components%20copy/numbers_widget.dart';
import 'package:myapp/components/appbar.dart';
import 'package:myapp/components/button_widget.dart';
import 'package:myapp/components/profilewidget.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/utils/user_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefernces.myUser;
    return Column(
      children: [
        ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.pushNamed(context, "edit page");
            }),
        const SizedBox(
          height: 24,
        ),
        buildName(user),
        const SizedBox(
          height: 24,
        ),
        Center(child: buildEditButton()),
        const SizedBox(
          height: 24,
        ),
        const NumbersWidget(),
        const SizedBox(
          height: 48,
        ),
        buildAbout(user),
      ],
    );
  }

  Widget buildEditButton() => ButtonWidget(
      text: "Edit Profile",
      onClicked: () {
        Navigator.pushNamed(context, "edit page");
      });

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
  Widget buildAbout(User user) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              user.about,
              style: TextStyle(fontSize: 14, height: 1.5),
            )
          ],
        ),
      );
}
