import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/dg-components/widgets/bottomsheet/bottom_sheet.dart';
import 'package:url_launcher/url_launcher_string.dart';

bottomSheetMessage(
        {required BuildContext context,
        required String lottie,
        required String title,
        required String description}) =>
    bottomSheet(
        title: title,
        context: context,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Lottie.asset(lottie,
                  fit: BoxFit.fill,
                  repeat: true,
                  // width: 150,
                  height: 150),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  child: Linkify(
                onOpen: (link) async {
                  launchUrlString(link.url);
                },
                text: description,
                style: const TextStyle(color: Colors.grey),
                linkStyle: TextStyle(color: Theme.of(context).primaryColor),
              )),
            ],
          ),
        ));
