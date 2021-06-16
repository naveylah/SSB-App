import 'package:flutter/material.dart';
import 'package:wallet/HomePage.dart';
import 'package:wallet/feedback_confirmation.dart';
import 'package:wallet/feelings_feedback.dart';

class ProgrammingServices extends StatelessWidget {
  const ProgrammingServices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(children: [
        Text("Survey Submission",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
        Text("Please submit your feedback so each transaction is successful!",
            style: TextStyle(
                fontSize: 12,
                //fontWeight: FontWeight.w800,
                color: Colors.black)),
        SizedBox(
          height: 20,
        ),
        Card(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Fatima"),
                  subtitle: Text(
                      "A graphic designer is a professional within the graphic design and graphic arts industry who assembles together images, typography, or motion graphics to create a piece of design."),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeelingFeadback()));
                        },
                        child: Text("Answer Survey"))
                  ],
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Card(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Nabilah"),
                  subtitle: Text(
                      "I am a fashion designer with experience handling all aspects of design and product development. I'm always happy to share my knowledge"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeelingFeadback()));
                        },
                        child: Text("Answer Survey"))
                  ],
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Card(
            color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Mohammad"),
                  subtitle: Text(
                      "I create fun and valuable Mathematics, English, and Science lessons for children of all ages. I aim to have more experience teaching children off work."),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeelingFeadback()));
                        },
                        child: Text("Answer Survey"))
                  ],
                )
              ],
            )),
      ]),
    );
  }
}
