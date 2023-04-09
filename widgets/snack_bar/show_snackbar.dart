import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

showSnackBar(
    {required BuildContext context,
    required String title,
    IconData icon = Icons.error}) {
  final theme = Theme.of(context);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    elevation: 0,
    margin: const EdgeInsets.all(10),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    backgroundColor: theme.cardColor,
    content: Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(width: 8),
        Expanded(
            child: Marquee(
                child: Text(title, style: TextStyle(color: Colors.grey)))),
      ],
    ),
    // the duration of your snack-bar
    duration: Duration(milliseconds: 1500),
  ));
}
