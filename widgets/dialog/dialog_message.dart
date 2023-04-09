import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';

showDialogMessage(
        {required BuildContext context,
        required String lottie,
        required String title,
        required String description}) =>
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final theme = Theme.of(context);
          return Dialog(
              backgroundColor: theme.backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Lottie.asset(lottie,
                            fit: BoxFit.fill,
                            repeat: true,
                            // width: 150,
                            height: 150),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          title,
                          style: const TextStyle(fontSize: 18),
                        ),
                        SingleChildScrollView(
                            child: Linkify(
                          onOpen: (link) async {
                            launchUrlString(link.url);
                          },
                          text: description,
                          style: const TextStyle(color: Colors.grey),
                          linkStyle: TextStyle(color: theme.primaryColor),
                        )),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            primary: theme.primaryColor, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        });
