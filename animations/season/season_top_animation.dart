import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../constants/config.dart';

class SeasonTopAnimation extends StatefulWidget {
  final double width;
  const SeasonTopAnimation({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  State<SeasonTopAnimation> createState() => _SeasonTopAnimationState();
}

class _SeasonTopAnimationState extends State<SeasonTopAnimation> {
  @override
  Widget build(BuildContext context) {
    switch (DateFormat('MMMM').format(DateTime.now())) {
      case 'December':
        return LottieBuilder.asset(
          lottieChristmasTopPath,
          width: widget.width,
        );
      case 'February':
        return LottieBuilder.asset(
          lottieVDayTopPath,
          height: 110,
        );
      default:
        return Container();
    }
  }
}
