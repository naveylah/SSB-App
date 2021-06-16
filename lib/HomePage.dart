import 'package:flutter/material.dart';
import 'package:wallet/Services/ProgrammingServices.dart';

import 'feelings_feedback.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  homepage({Key key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "")
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asset/images/logo.png"))),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Time Wallet",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu',
                          fontSize: 25),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Account overview",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir'),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey[350],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "20 Hours",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Current Balance",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orangeAccent),
                    child: Icon(Icons.add, size: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Send Feedback",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/images/scanqr.png"))),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orangeAccent),
                      child: FloatingActionButton(
                        backgroundColor: Colors.orange,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeelingFeadback()),
                          );
                        },
                        child: Icon(
                          Icons.send_outlined,
                          size: 30,
                        ),
                      )),
                  avatarWidget('Icon1', 'Fatima'),
                  //avatarWidget('Icon2', 'Ali'),
                  avatarWidget('Icon3', 'Nabilah'),
                  avatarWidget('icon4', 'Mohammad'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Services",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontFamily: "avenir"),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.dialpad),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                children: [
                  servicesWidget("computing", "Programming\Tutoring",
                      "Programming Services"),
                  servicesWidget(
                      "calculator", "Math\nTutoring", "mathServices"),
                  servicesWidget(
                      "paint-palette", "Drawing\nTutoring", "DrawingServices"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column servicesWidget(String img, String name, String page) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProgrammingServices()));
            },
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xfff1f3f6)),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/images/$img.png'))),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontFamily: 'avenir', fontSize: 14),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Container avatarWidget(String img, String name) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 120,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Color(0xfff1f3f6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("asset/images/$img.png"),
                    fit: BoxFit.contain),
                border: Border.all(color: Colors.black, width: 2)),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "avenir",
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
