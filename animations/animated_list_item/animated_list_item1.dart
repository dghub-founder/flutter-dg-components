import 'package:flutter/material.dart';

class AnimatedListItem1 extends StatefulWidget {
  final int index;
  final Widget child;
  final Curve curve;

  const AnimatedListItem1(
      {required this.index,
      required this.child,
      this.curve = Curves.easeInOutQuart,
      Key? key})
      : super(key: key);

  @override
  State<AnimatedListItem1> createState() => _AnimatedListItem1State();
}

class _AnimatedListItem1State extends State<AnimatedListItem1>
    with SingleTickerProviderStateMixin {
  bool animate = false;
  bool isStart = true;

  @override
  void initState() {
    isStart
        ? Future.delayed(Duration(milliseconds: widget.index * 100), () {
            animate = true;
            isStart = false;
          })
        : animate = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: animate ? 1 : 0,
      curve: widget.curve,
      child: AnimatedPadding(
          duration: const Duration(milliseconds: 1000),
          padding: animate
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(top: 20),
          child: widget.child),
    );
  }
}
