import 'package:flutter/material.dart';

import 'login.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          title: Center(
              child: Text(
            "FORGOT PASSWORD",
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.57,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Don't Stress, just fil in your phone number",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                "or email address and we will help you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                "reset your password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(hintText: "Mobile or Email"),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              InkWell(
                  onTap: () {},
                  child: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 300),
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "RESET PASSWORD",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Back To Log In"))
            ],
          ),
        ),
      ),
    );
  }
}
