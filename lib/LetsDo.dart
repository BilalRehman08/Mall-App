import 'package:Mall_App/registration.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class LetsDo extends StatefulWidget {
  @override
  _LetsDoState createState() => _LetsDoState();
}

class _LetsDoState extends State<LetsDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/b1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.57,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text("A modern shopping mall in the heart of Windhoek,",
                    style: TextStyle(fontSize: 16)),
              ),
              Center(
                  child: Text("offering a superb shopping environment, ",
                      style: TextStyle(fontSize: 16))),
              Center(
                child: Text(" providing our customers and shoppers ",
                    style: TextStyle(fontSize: 16)),
              ),
              Center(
                  child: Text("with an unrivalled shopping experience.",
                      style: TextStyle(fontSize: 16))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ))),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registration()));
                      },
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 300),
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
