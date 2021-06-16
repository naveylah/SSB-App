import 'package:flutter/material.dart';

import 'package:wallet/sign_up.dart';

import 'HomePage.dart';

class LogIn extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.arrow_forward, size: 17)
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Not a member yet?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                  //style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
