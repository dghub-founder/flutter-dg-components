import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:user_app/dg-components/constants/globals.dart';

import '../../library/background_animation/bg/weather_bg.dart';
import '../../library/background_animation/utils/weather_type.dart';
import '../../system/dg-providers/background_weather_animation_provider.dart';

class BackgroundWeatherAnimation extends StatefulWidget {
  const BackgroundWeatherAnimation({Key? key}) : super(key: key);

  @override
  State<BackgroundWeatherAnimation> createState() =>
      _BackgroundWeatherAnimationState();
}

class _BackgroundWeatherAnimationState extends State<BackgroundWeatherAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer<BackgroundWeatherAnimationProvider>(
        builder: (context, state, child) {
      if (!enabledAnimation) {
        return Container();
      }
      switch (DateFormat('MMMM').format(DateTime.now())) {
        case 'December':
          return WeatherBg(
            weatherType: WeatherType.lightSnow,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          );
        case 'February':
          return AnimatedBackground(
              child: SizedBox(),
              vsync: this,
              behaviour: RandomParticleBehaviour(
                  options: ParticleOptions(
                      image: Image.asset(
                        'assets/images/heart.png',
                        width: 120,
                        height: 120,
                      ),
                      spawnOpacity: 0.6,
                      spawnMinSpeed: 70,
                      spawnMaxSpeed: 80,
                      particleCount: 30,
                      baseColor: Colors.red)));
        default:
          return Container();
      }
    });
  }
}
