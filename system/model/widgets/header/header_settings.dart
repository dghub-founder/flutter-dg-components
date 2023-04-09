import 'package:flutter/material.dart';

import 'header_item.dart';

class HeaderSettings {
  late List<HeaderItem> headerItem;
  final Function()? searchButtonClick;
  final Widget? leftWidget;

  HeaderSettings(
      {this.leftWidget, this.headerItem = const [], this.searchButtonClick});
}
