import 'package:flutter/material.dart';
import 'package:myapp/Log_in/Update_pass.dart';

import 'package:myapp/Log_in/log_in.dart';
import 'package:myapp/Log_in/sign_up.dart';

class Forget_pass extends StatefulWidget {
  const Forget_pass({super.key});

  @override
  State<Forget_pass> createState() => _Forget_passState();
}

class _Forget_passState extends State<Forget_pass> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final myController = TextEditingController();
  String val = "saleh@gmail.com";
  String val1 = "saleh123";
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
                width: 350,
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
                      "Forgot Password",
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
                      height: 10,
                    ),
                    Text(
                      "Provide your email address to reset password",
                      style: TextStyle(color: Colors.grey),
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
                            if (emailController.text == val) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Update_pass();
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
                            "Reset Password",
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Whant to go back? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context, MaterialPageRoute(
                              builder: (context) {
                                return Log_in();
                              },
                            ));
                          },
                          child: Text(
                            "Log in",
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
