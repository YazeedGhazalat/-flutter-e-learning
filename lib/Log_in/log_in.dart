import 'package:flutter/material.dart';
import 'package:myapp/Log_in/StartPage.dart';
import 'package:myapp/Log_in/forget_pass.dart';

import 'package:myapp/Log_in/sign_up.dart';
import 'package:myapp/screens/Home.dart';

class Log_in extends StatefulWidget {
  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String val1 = "saleh123";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final myController = TextEditingController();
  String val = "saleh@gmail.com";

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://png.pngtree.com/png-vector/20210714/ourlarge/pngtree-man-study-e-learning-and-online-course-png-image_3583857.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Log_in",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gapPadding: 20,
                            borderSide: BorderSide(width: 50)),
                        prefixIcon: Icon(Icons.email),
                        label: Text("Email"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gapPadding: 20,
                            borderSide: BorderSide(width: 50)),
                        prefixIcon: Icon(Icons.lock),
                        label: Text("Password"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 160,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Forget_pass();
                              },
                            )).then((value) {
                              val1 = value;
                            });
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 320,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () {
                            if (emailController.text == val &&
                                passwordController.text == val1) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Home();
                                },
                              ));
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
                            "Log in",
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do not have an account? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Sign_up();
                              },
                            ));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        )
                      ],
                    )
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