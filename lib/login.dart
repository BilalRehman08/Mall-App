import 'package:Mall_App/registration.dart';
import 'package:flutter/material.dart';

import 'forgot.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            "LOG IN",
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
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
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
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
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registration()),
                    );
                  },
                  child: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 300),
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forgot()),
                    );
                  },
                  child: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 300),
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "FORGOT PASSWORD",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
