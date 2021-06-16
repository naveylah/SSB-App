import 'package:flutter/material.dart';
import 'package:wallet/sign_up.dart';

import 'HomePage.dart';
import 'Services/ProgrammingServices.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
      // routes: {
      //   '/hompage': (context) => HomePage(),
      // },
    );
  }
}

class MyhomePage extends StatefulWidget {
  MyhomePage({Key key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/sideImage.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "06:22 AM",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: Container()),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/cloud.png'),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "34 C",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w800),
                        )
                      ]),
                  Text('June 6, 2020 | Saturday',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Expanded(
                    child: Container(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("asset/images/logo.png"),
                                      fit: BoxFit.contain)),
                            ),
                            Text(
                              "Time Bank",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'ubuntu',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "The future of \nsocial inclusion ",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
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
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
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
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Icon(Icons.arrow_forward, size: 17)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/homePage');
  }
}
