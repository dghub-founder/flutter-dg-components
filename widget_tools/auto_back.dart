import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../constants/globals.dart';

class AutoBack extends StatelessWidget {
  final Color iconColor;
  const AutoBack({this.iconColor = Colors.grey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoLeadingButton(
      builder: (context, leadingType, action) {
        if (leadingType.isBack) {
          return GestureDetector(
              onTap: () {
                action!();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_back,
                  size: settings!.header_bar.setting.icon_size,
                  color: iconColor,
                ),
              ));
        } else {
          return SizedBox();
        }
      },
    );
  }
}
