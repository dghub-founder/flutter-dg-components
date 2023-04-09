import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final double? width;
  final double? height;
  final Color color;
  final double elevation;
  final double radius;
  final Function onClick;
  final String label;
  final double labelSize;
  final Color labelColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final bool isLoading;
  final bool isError;
  final bool isSuccess;
  const Button(
      {this.isSuccess = false,
      this.isError = false,
      this.isLoading = false,
      this.width = double.infinity,
      this.height,
      required this.color,
      this.elevation = 0,
      this.radius = 8,
      required this.onClick,
      required this.label,
      this.labelSize = 14,
      this.labelColor = Colors.white,
      this.padding = const EdgeInsets.fromLTRB(8, 12, 8, 12),
      this.margin = const EdgeInsets.all(0),
      Key? key})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();

  static Widget glass(
      {double? width,
      double? height,
      double radius = 0.0,
      Color color = Colors.white,
      required Function onClick,
      double border = 0.0,
      double opacity = 0.3,
      required String text,
      Color textColor = Colors.white,
      double textSize = 12,
      FontWeight textWeight = FontWeight.normal,
      double padding = 8.0}) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(padding),
          primary: Colors.grey.shade400.withOpacity(opacity), // background
          onPrimary: color, // foreground
        ),
        onPressed: () {
          onClick();
        },
        child: Text(text,
            style: TextStyle(
                color: textColor, fontSize: textSize, fontWeight: textWeight)),
      ),
    );
  }
}

class _ButtonState extends State<Button> {
  Color successColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.isError
              ? Colors.red
              : widget.isSuccess
                  ? successColor
                  : widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius), // <-- Radius
          ),
          elevation: widget.elevation,
          padding: widget.padding, // foreground
        ),
        onPressed: () {
          widget.onClick();
        },
        child: widget.isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(color: Colors.white))
            : Text(
                widget.isError ? 'Try again' : widget.label,
                style: TextStyle(
                    color: widget.labelColor, fontSize: widget.labelSize),
                maxLines: 1,
              ),
      ),
    );
  }
}
