import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, "Home");
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
          ListTile(
            onTap: (() {}),
            leading: Container(
                child: Icon(Icons.book),
                width: 70,
                height: 70,
                color: Colors.amber),
            title: Text("Unit 1"),
            subtitle: Text("Pop-ups"),
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
            title: Text("Unit 2"),
            subtitle: Text("Hidden talents"),
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
            title: Text("Unit 3"),
            subtitle: Text("Can’t buy me love"),
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
            title: Text("Unit 4"),
            subtitle: Text("Travellers’ tales"),
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
            title: Text("Unit 5"),
            subtitle: Text("The colleague from hell"),
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
            title: Text("Unit 6"),
            subtitle: Text("Career changes"),
            isThreeLine: true,
            trailing:
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 40),
          ),
        ],
      ),
    );
  }
}
