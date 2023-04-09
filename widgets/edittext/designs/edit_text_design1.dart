import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/globals.dart';

class EditTextDesign1 extends StatefulWidget {
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
  final bool digitOnly;
  const EditTextDesign1(
      {required this.onClick,
      required this.line,
      required this.max_length,
      required this.keyboardType,
      this.digitOnly = false,
      required this.controller,
      required this.hint,
      required this.label,
      required this.icon,
      required this.icon_left,
      required this.enable,
      required this.isPasswordMode,
      required this.margin,
      Key? key})
      : super(key: key);

  @override
  State<EditTextDesign1> createState() => _EditTextDesign1State();
}

class _EditTextDesign1State extends State<EditTextDesign1> {
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
      margin: widget.margin,
      child: InkWell(
        onTap: widget.onClick,
        child: TextField(
          obscureText: isPasswordModeChanger,
          enabled: widget.enable,
          maxLength: widget.max_length,
          keyboardType: widget.keyboardType,
          inputFormatters: [
            if (widget.digitOnly) FilteringTextInputFormatter.digitsOnly
          ],

          maxLines: widget.line,
          obscuringCharacter: "*",
          controller: widget.controller,
          style: TextStyle(
              color: isDarkTheme ? Colors.white : Colors.black, fontSize: 12),
          // obscureText: true,
          decoration: InputDecoration(
              errorStyle: TextStyle(
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.primaryColor, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isDarkTheme ? Colors.grey.shade800 : Colors.grey,
                    width: 1.5),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: isDarkTheme ? Colors.grey.shade800 : Colors.grey,
                    width: 1.5),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: isDarkTheme ? Colors.grey.shade800 : Colors.grey)),
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
                          : Icon(widget.icon, color: Colors.grey, size: 17)),
              labelText: widget.label,
              floatingLabelStyle: TextStyle(color: theme.primaryColor),
              labelStyle: TextStyle(color: Colors.grey),
              hintStyle: const TextStyle(fontSize: 12.0, color: Colors.grey),
              hintText: widget.hint),
        ),
      ),
    );
  }
}
