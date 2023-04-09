import 'package:flutter/material.dart';

import '../../constants/globals.dart';
import '../../system/model/widgets/header/header_settings.dart';
import 'header_bar_design1.dart';
import 'header_bar_design2.dart';
import 'header_bar_design3.dart';

class HeaderBar extends StatelessWidget {
  final int? design;
  final HeaderSettings headersettings;
  final String title;
  const HeaderBar(
      {this.design,
      required this.title,
      required this.headersettings,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (design ?? settings!.header_bar.setting.design) {
      case 1:
        return HeaderBarDesign1(headersettings: headersettings, title: title);
      case 2:
        return HeaderBarDesign2(headersettings: headersettings, title: title);
      case 3:
        return HeaderBarDesign3(headersettings: headersettings, title: title);
      default:
        return HeaderBarDesign1(headersettings: headersettings, title: title);
    }
  }
}
