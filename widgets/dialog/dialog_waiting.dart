import 'package:flutter/material.dart';

void showDialogWaiting(BuildContext context) => showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      // onWillPop: () async => false,
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Waiting...', style: TextStyle(color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      );
    });
