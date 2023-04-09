import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../tools/dg-tools.dart';
import 'designs/splash_design1.dart';

class DGSplash extends StatefulWidget {
  final int design;
  final bool autoClose;
  final int autoCloseSeconds;
  final Function onComplete;
  final double logoSize;
  const DGSplash(
      {this.design = 1,
      this.autoClose = true,
      this.autoCloseSeconds = 3,
      required this.onComplete,
      this.logoSize = 90,
      Key? key})
      : super(key: key);

  @override
  State<DGSplash> createState() => _DGSplashState();
}

class _DGSplashState extends State<DGSplash> {
  @override
  void initState() {
    DGTools.fullScreen(isEnabled: true);
    Future.delayed(Duration(seconds: widget.autoCloseSeconds), () {
      DGTools.fullScreen(isEnabled: false);
      widget.onComplete();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.design) {
      case 1:
        return SplashDesign1(
          logoSize: widget.logoSize,
        );
      default:
        return SplashDesign1(
          logoSize: widget.logoSize,
        );
    }
  }
}
