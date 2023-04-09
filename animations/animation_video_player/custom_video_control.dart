import 'dart:ui';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_app/dg-components/animations/animation_video_player/landscape_play_toggle.dart';
import 'package:user_app/dg-components/widget_tools/logo.dart';

class CustomVideoControl extends StatelessWidget {
  const CustomVideoControl(
      {Key? key,
      this.iconSize = 20,
      this.fontSize = 12,
      this.iconSubtitleClick,
      this.iconZoomClick,
      this.iconRotateClick,
      this.isLiveTv = false})
      : super(key: key);
  final double iconSize;
  final double fontSize;
  final Function()? iconSubtitleClick;
  final Function()? iconZoomClick;
  final Function()? iconRotateClick;
  final bool isLiveTv;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        FlickShowControlsAction(
          child: FlickSeekVideoAction(
            child: Center(
              child: FlickVideoBuffer(
                child: FlickAutoHideChild(
                  showIfVideoNotInitialized: false,
                  child: LandscapePlayToggle(),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: FlickAutoHideChild(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlickPlayToggle(
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      if (!isLiveTv)
                        FlickCurrentPosition(
                          fontSize: fontSize,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: isLiveTv
                            ? SizedBox()
                            : Container(
                                child: FlickVideoProgressBar(
                                  flickProgressBarSettings:
                                      FlickProgressBarSettings(
                                    height: 10,
                                    handleRadius: 10,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 8,
                                    ),
                                    backgroundColor: Colors.white24,
                                    bufferedColor: Colors.white38,
                                    getPlayedPaint: (
                                        {double? handleRadius,
                                        double? height,
                                        double? playedPart,
                                        double? width}) {
                                      return Paint()
                                        ..shader = LinearGradient(colors: [
                                          theme.primaryColor,
                                          theme.primaryColor
                                        ], stops: [
                                          0.0,
                                          0.5
                                        ]).createShader(
                                          Rect.fromPoints(
                                            Offset(0, 0),
                                            Offset(width!, 0),
                                          ),
                                        );
                                    },
                                    getHandlePaint: (
                                        {double? handleRadius,
                                        double? height,
                                        double? playedPart,
                                        double? width}) {
                                      return Paint()
                                        ..shader = RadialGradient(
                                          colors: [
                                            theme.primaryColor,
                                            theme.primaryColor,
                                            Colors.white,
                                          ],
                                          stops: [0.0, 0.4, 0.5],
                                          radius: 0.4,
                                        ).createShader(
                                          Rect.fromCircle(
                                            center: Offset(
                                                playedPart!, height! / 2),
                                            radius: handleRadius!,
                                          ),
                                        );
                                    },
                                  ),
                                ),
                              ),
                      ),
                      if (!isLiveTv)
                        FlickTotalDuration(
                          fontSize: fontSize,
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      FlickSoundToggle(
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      if (!isLiveTv)
                        GestureDetector(
                            onTap: iconSubtitleClick,
                            child: Icon(Icons.subtitles,
                                color: Colors.white, size: 20)),
                      if (!isLiveTv)
                        SizedBox(
                          width: 20,
                        ),
                      GestureDetector(
                        onTap: iconZoomClick,
                        child: Icon(Icons.fit_screen,
                            color: Colors.white, size: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: iconRotateClick,
                        child: Icon(Icons.rotate_90_degrees_ccw,
                            color: Colors.white, size: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /*  Positioned(
          right: 20,
          top: 10,
          child: GestureDetector(
            onTap: () {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                  overlays: SystemUiOverlay.values);
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.portraitUp]);
              Navigator.pop(context);
            },
            child: Icon(
              Icons.cancel,
              size: 30,
            ),
          ),
        ),*/
        Positioned(
            left: 10,
            top: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Logo(size: 30),
                if (isLiveTv)
                  Container(
                      color: Colors.red,
                      padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                      child: Text(
                        'Live',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ))
              ],
            )),
      ],
    );
  }
}
