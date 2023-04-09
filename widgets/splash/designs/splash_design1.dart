import 'dart:io';
import 'package:flutter/material.dart';

import '../../../widget_tools/logo.dart';

class SplashDesign1 extends StatefulWidget {
  final double logoSize;
  const SplashDesign1({required this.logoSize, Key? key}) : super(key: key);

  @override
  State<SplashDesign1> createState() => _SplashDesign1State();
}

class _SplashDesign1State extends State<SplashDesign1> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
        onWillPop: () => exit(0),
        child: SafeArea(
          child: Scaffold(
            body: SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Logo(size: widget.logoSize),
                  ],
                )),
              ),
            ),
          ),
        ));
  }
}
