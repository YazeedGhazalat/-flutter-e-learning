import 'package:flutter/material.dart';

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
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.amber),
            title: Text("Introduction"),
            subtitle: Text("Ice-Breakers and Orientation"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.red),
            title: Text("Module 1"),
            subtitle: Text("Work Time, Free Time"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.blue),
            title: Text("Module 2"),
            subtitle: Text("I Like It"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.purple),
            title: Text("Module 3"),
            subtitle: Text("Let's Go Out Tonight"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.green),
            title: Text("Module 4"),
            subtitle: Text("Is There a Doctor?"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.pink),
            title: Text("Module 5"),
            subtitle: Text("Thinking of Tomorrow"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
        ],
      ),
    );
  }
}
