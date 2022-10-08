import 'package:flutter/material.dart';
import 'package:myapp/Log_in/forget_pass.dart';

import 'package:myapp/Log_in/sign_up.dart';

class Update_pass extends StatefulWidget {
  const Update_pass({super.key});

  @override
  State<Update_pass> createState() => _Update_passState();
}

class _Update_passState extends State<Update_pass> {
  TextEditingController currentPass = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  final myController = TextEditingController();
  String val = "saleh123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(221, 222, 212, 212),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 320,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Update Password",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: currentPass,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gapPadding: 20,
                            borderSide: BorderSide(width: 50)),
                        prefixIcon: Icon(Icons.key),
                        label: Text("Current Password"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: newPass,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gapPadding: 20,
                            borderSide: BorderSide(width: 50)),
                        prefixIcon: Icon(Icons.key),
                        label: Text("New Password"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: confirmPass,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gapPadding: 20,
                            borderSide: BorderSide(width: 50)),
                        prefixIcon: Icon(Icons.key),
                        label: Text("Confirm Password"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 320,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () {
                            if (currentPass.text == val &&
                                newPass.text == confirmPass.text) {
                              showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(
                                        "Updated Successfully",
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                              Navigator.pop(
                                                  context, newPass.text);
                                            },
                                            child: Text("OK"))
                                      ],
                                    );
                                  });
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(
                                        "There is an error",
                                      ),
                                    );
                                  });
                            }
                          },
                          child: Text(
                            "Update Now",
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
