import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String birthDateInString = "Select Date";
  DateTime birthDate;
  bool isDateSelected = false;
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
            "REGISTRATION",
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(hintText: "Full name"),
                ),
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
                  decoration: InputDecoration(hintText: "Gender"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(hintText: "Phone Number"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              GestureDetector(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Text(
                          "Date Of Birth:",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.28,
                      ),
                      Text(
                        "$birthDateInString",
                        style: TextStyle(fontSize: 16),
                      ),
                      new Icon(Icons.calendar_today),
                    ],
                  ),
                  onTap: () async {
                    final datePick = await showDatePicker(
                        context: context,
                        initialDate: new DateTime.now(),
                        firstDate: new DateTime(1900),
                        lastDate: new DateTime(2100));
                    if (datePick != null && datePick != birthDate) {
                      setState(() {
                        birthDate = datePick;
                        isDateSelected = true;

                        // put it here
                        birthDateInString =
                            "${birthDate.month}/${birthDate.day}/${birthDate.year}"; // 08/14/2019
                      });
                    }
                  }),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Divider(
                  height: 15,
                  color: Colors.black,
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
                        "REGISTER",
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
