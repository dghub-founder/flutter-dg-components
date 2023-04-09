import 'package:flutter/material.dart';

import '../../constants/globals.dart';
import '../../system/model/widgets/header/header_settings.dart';
import 'header_bar_back_design1.dart';
import 'header_bar_back_design2.dart';
import 'header_bar_back_design3.dart';

class HeaderBarBack extends StatelessWidget {
  final HeaderSettings headersettings;
  final String title;
  const HeaderBarBack(
      {required this.title, required this.headersettings, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (settings!.header_bar.setting.design) {
      case 1:
        return HeaderBarBackDesign1(
            headersettings: headersettings, title: title);
      case 2:
        return HeaderBarBackDesign2(
            headersettings: headersettings, title: title);
      case 3:
        return HeaderBarBackDesign3(
            headersettings: headersettings, title: title);
      default:
        return HeaderBarBackDesign1(
            headersettings: headersettings, title: title);
    }
  }
}
