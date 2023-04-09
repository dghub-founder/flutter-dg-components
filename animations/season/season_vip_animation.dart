import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../constants/config.dart';

class SeasonVipAnimation extends StatefulWidget {
  final double width;
  final double height;
  const SeasonVipAnimation(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<SeasonVipAnimation> createState() => _SeasonVipAnimationState();
}

class _SeasonVipAnimationState extends State<SeasonVipAnimation> {
  @override
  Widget build(BuildContext context) {
    switch (DateFormat('MMMM').format(DateTime.now())) {
      case 'December':
        return LottieBuilder.asset(
          lottieChristmasVipPath,
          width: widget.width - 18,
          height: widget.height - 18,
        );
      case 'February':
        return LottieBuilder.asset(
          lottieVDayVipPath,
          width: widget.width,
          height: widget.height,
        );
      default:
        return LottieBuilder.asset(
          lottieCrown2Path,
          width: widget.width,
          height: widget.height,
        );
    }
  }
}
