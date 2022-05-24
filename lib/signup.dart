import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'homepage.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late double height;
  late double width;
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                  top: height * 0.02,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                  size: 25.0,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Image(
                    image: AssetImage("images/image1.png"),
                    fit: BoxFit.cover,
                    height: 50.0,
                    width: 50.0,
                  ),
                  Text(
                    " Bot",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.03,
                  left: width * 0.04,
                ),
                child: Text(
                  "Getting Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.03,
                  left: width * 0.04,
                ),
                child: Text(
                  "Create an account to continue!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.03,
                    right: width * 0.03),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    labelText: 'Email Adress',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'testemail123@gmai.com',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.03,
                    right: width * 0.03),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: '* * * * *',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.03,
                    right: width * 0.03),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: '* * * * *',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CheckboxListTile(
                activeColor: Colors.blue,
                title: Row(
                  children: [
                    Text(
                      "I agree to the",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      " terms of service",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      " and",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      " privacy policy",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.065,
                    width: width * 0.85,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xffFBA808),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
