import 'package:flutter/material.dart';
import 'quality_feedback.dart';

//import 'quality_drop_box.dart';
import './review_drop_box.dart';

class FeelingFeadback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Send feedback',
          style:
              TextStyle(fontFamily: 'ubunt', fontSize: 20, color: Colors.black),
        ),
      ),
      body: Column(children: [
        Center(
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                Icons.account_circle,
                size: 100.0,
              ))
            ],
          ),
        ),
        Text(
          'How did you rate the provided service?',
          style: TextStyle(fontFamily: 'aviner', fontSize: 40),
          textAlign: TextAlign.center,
        ),

        Padding(
          padding: const EdgeInsets.all(70),
          child: ReviewDropDownWidget(),
        ),
        // ignore: missing_required_param
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QualityFeadback()));
            },
            child: Text('Next'))
      ]),
    );
  }
}
