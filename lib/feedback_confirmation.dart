import 'package:flutter/material.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

class FeedbackConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Confirm Dialog'),
          onPressed: () async {
            if (await confirm(context)) {
              return print('pressedOK');
            }
            return print('pressedCancel');
          },
        ),
      ),
    );
  }
}
