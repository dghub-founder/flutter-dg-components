import 'package:flutter/material.dart';

import '../../constants/globals.dart';
import 'designs/edit_text_design1.dart';
import 'designs/edit_text_design2.dart';

class EditText extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  final IconData? icon;
  final IconData? icon_left;
  final int line;
  final int? max_length;
  final TextInputType keyboardType;
  final bool enable;
  final bool isPasswordMode;
  final EdgeInsets? margin;
  final Function()? onClick;
  final Function()? rightIconClick;
  final int design;
  final double radius;
  final Color? backgroundColor;
  const EditText(
      {this.design = 1,
      this.line = 1,
      this.max_length,
      this.keyboardType = TextInputType.multiline,
      this.controller,
      required this.hint,
      required this.label,
      this.icon,
      this.icon_left,
      this.enable = true,
      this.isPasswordMode = false,
      this.margin,
      this.onClick,
      this.rightIconClick,
      this.radius = 0,
      this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (design) {
      case 1:
        return EditTextDesign1(
          max_length: max_length,
          onClick: onClick,
          margin: margin,
          isPasswordMode: isPasswordMode,
          enable: enable,
          controller: controller,
          hint: hint,
          label: label,
          icon: icon,
          icon_left: icon_left,
          keyboardType: keyboardType,
          line: line,
        );
      case 2:
        return EditTextDesign2(
          max_length: max_length,
          backgroundColor: backgroundColor,
          radius: radius,
          rightIconClick: rightIconClick,
          onClick: onClick,
          margin: margin,
          isPasswordMode: isPasswordMode,
          enable: enable,
          controller: controller,
          hint: hint,
          label: label,
          icon: icon,
          icon_left: icon_left,
          keyboardType: keyboardType,
          line: line,
        );
      default:
        return EditTextDesign1(
          max_length: max_length,
          onClick: onClick,
          margin: margin,
          isPasswordMode: isPasswordMode,
          enable: enable,
          controller: controller,
          hint: hint,
          label: label,
          icon: icon,
          icon_left: icon_left,
          keyboardType: keyboardType,
          line: line,
        );
    }
  }
}
