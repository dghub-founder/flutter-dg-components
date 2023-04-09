import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/config.dart';
import '../../lists/list_theme.dart';
import '../button/button.dart';

showDialogThemeChange({required BuildContext context}) => showDialog(
    context: context,
    builder: (BuildContext context) {
      final theme = Theme.of(context);
      return Dialog(
          backgroundColor: theme.backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Lottie.asset(lottieThemePath,
                          fit: BoxFit.fill,
                          repeat: true,
                          // width: 150,
                          height: 150),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Theme collection',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTheme(physics: NeverScrollableScrollPhysics()),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                          color: theme.primaryColor,
                          onClick: () {
                            Navigator.pop(context);
                          },
                          label: 'Close'),
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
