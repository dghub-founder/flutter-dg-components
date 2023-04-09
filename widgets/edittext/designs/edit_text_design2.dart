import 'package:flutter/material.dart';

import '../../../constants/globals.dart';

class EditTextDesign2 extends StatefulWidget {
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
  final double radius;
  final Color? backgroundColor;
  const EditTextDesign2(
      {required this.onClick,
      required this.line,
      required this.max_length,
      required this.keyboardType,
      required this.controller,
      required this.hint,
      required this.label,
      required this.icon,
      required this.icon_left,
      required this.enable,
      required this.isPasswordMode,
      required this.margin,
      required this.radius,
      required this.backgroundColor,
      required this.rightIconClick,
      Key? key})
      : super(key: key);

  @override
  State<EditTextDesign2> createState() => _EditTextDesign2State();
}

class _EditTextDesign2State extends State<EditTextDesign2> {
  late bool isPasswordModeChanger;

  @override
  void initState() {
    isPasswordModeChanger = widget.isPasswordMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius),
        color: widget.backgroundColor == null
            ? theme.cardColor
            : widget.backgroundColor,
      ),
      margin: widget.margin,
      padding: EdgeInsets.only(
          right: widget.icon == null ? 10 : 0,
          left: widget.icon_left == null ? 10 : 0),
      child: GestureDetector(
        onTap: widget.onClick,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          obscureText: isPasswordModeChanger,
          enabled: widget.enable,
          maxLength: widget.max_length,
          keyboardType: widget.keyboardType,
          maxLines: widget.line,
          obscuringCharacter: "*",
          controller: widget.controller,
          style: TextStyle(
              color: isDarkTheme ? Colors.white : Colors.black, fontSize: 12),
          // obscureText: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              // isCollapsed: true,
              errorStyle: TextStyle(
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              prefixIcon: widget.icon_left == null
                  ? null
                  : Icon(widget.icon_left, color: Colors.grey, size: 17),
              suffixIcon: widget.icon == null
                  ? null
                  : GestureDetector(
                      onTap: widget.isPasswordMode
                          ? () => setState(() {
                                isPasswordModeChanger = !isPasswordModeChanger;
                              })
                          : null,
                      child: widget.isPasswordMode
                          ? isPasswordModeChanger
                              ? Icon(Icons.visibility,
                                  color: Colors.grey, size: 17)
                              : Icon(Icons.visibility_off,
                                  color: Colors.grey, size: 17)
                          : GestureDetector(
                              onTap: widget.rightIconClick,
                              child: Icon(widget.icon,
                                  color: Colors.grey, size: 17))),
              hintStyle: const TextStyle(fontSize: 12.0, color: Colors.grey),
              hintText: widget.hint),
        ),
      ),
    );
  }
}
