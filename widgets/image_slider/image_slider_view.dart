import 'package:auto_route/auto_route.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../constants/globals.dart';
import '../../system/model/widgets/image_slider/image_slider.dart';
import '../../system/model/widgets/image_slider/image_slider_settings.dart';
import '../../widget_tools/responsive.dart';
import '../imageview/imageview.dart';

class ImageSliderView extends StatefulWidget {
  final List<ImageSlider> data;
  final bool isLoading;
  final ImageSliderSettings settings;

  const ImageSliderView(
      {required this.settings,
      this.isLoading = false,
      required this.data,
      Key? key})
      : super(key: key);

  @override
  State<ImageSliderView> createState() => _ImageSliderViewState();

  static Widget loading(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.grey.withOpacity(0.4),
                child: Shimmer.fromColors(
                  baseColor: theme.cardColor,
                  highlightColor: theme.backgroundColor,
                  child: Container(
                    color: Colors.grey.withOpacity(0.4),
                    // width: Responsive.isMobile(context) ? 140 : 200,
                    height: Responsive.isMobile(context) ? 500 / 2.2 : 500,
                  ),
                ));
          },
          options: CarouselOptions(
            scrollPhysics: const NeverScrollableScrollPhysics(),
            height: Responsive.isMobile(context) ? 400 / 2.2 : 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 20),
        CarouselIndicator(
          width: 8,
          height: 8,
          cornerRadius: 100,
          activeColor: Colors.grey.shade400,
          color: Colors.grey.shade400,
          count: 3,
          index: 2,
        ),
      ],
    );
  }
}

class _ImageSliderViewState extends State<ImageSliderView> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.isLoading) {
      return ImageSliderView.loading(context);
    } else {
      return Column(
        children: [
          CarouselSlider.builder(
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        end: const Alignment(0.0, -1),
                        begin: const Alignment(0.0, 0.6),
                        colors: <Color>[
                          widget.settings.shadow_frame == 1
                              ? theme.indicatorColor
                              : Colors.transparent,
                          widget.settings.shadow_frame == 1
                              ? theme.indicatorColor.withOpacity(0.0)
                              : Colors.transparent
                        ],
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        if (widget.data[index].link_enabled == 1) {
                          await launchUrlString(
                            widget.data[index].link,
                            mode: LaunchMode.externalNonBrowserApplication,
                          );
                        } else {
                          if (widget.data[index].post_id == 0) {
                          } else {
                            final String id = widget.data[index].post_id;
                            context.router.pushNamed('/detail/$id');
                          }
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            widget.settings.image_radius.toDouble()),
                        child: ImageViewNetwork(
                          url: host + widget.data[index].photo,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  if (widget.settings.enabled_label == 1)
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(widget.data[index].title,
                          style: const TextStyle(fontSize: 18)),
                    ),
                ],
              );
            },
            options: CarouselOptions(
              height: Responsive.isMobile(context)
                  ? widget.settings.size.toDouble() / 2.2
                  : widget.settings.size.toDouble(),
              aspectRatio: 16 / 9,
              viewportFraction: design(design_num: widget.settings.design),
              initialPage: 0,
              enableInfiniteScroll:
                  widget.settings.enabled_infinite_scroll == 1 ? true : false,
              reverse: widget.settings.reverse == 1 ? true : false,
              autoPlay: widget.settings.auto_play == 1 ? true : false,
              autoPlayInterval:
                  Duration(seconds: widget.settings.auto_duration_seconds),
              autoPlayAnimationDuration: Duration(
                  milliseconds: widget.settings.animation_duration_miliseconds),
              autoPlayCurve:
                  animation(animation_num: widget.settings.animation),
              enlargeCenterPage:
                  widget.settings.center_page == 1 ? true : false,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  selectIndex = index;
                });
              },
            ),
          ),
          if (widget.settings.enabled_indicator == 1)
            const SizedBox(height: 20),
          if (widget.settings.enabled_indicator == 1)
            CarouselIndicator(
              width: 8,
              height: 4,
              cornerRadius: 100,
              activeColor: theme.primaryColor,
              color: Colors.grey.shade400,
              count: widget.data.length,
              index: selectIndex,
            ),
        ],
      );
    }
  }

  double design({required int design_num}) {
    switch (design_num) {
      case 1:
        {
          return 0.8;
        }
      //  break;

      case 2:
        {
          return 1;
        }
      // break;

      case 3:
        {
          return 0.6;
        }

      default:
        {
          return 0.8;
        }
      // break;
    }
  }

  Curve animation({required int animation_num}) {
    switch (animation_num) {
      case 1:
        {
          return Curves.ease;
        }
      //  break;

      case 2:
        {
          return Curves.fastOutSlowIn;
        }
      // break;

      case 3:
        {
          return Curves.bounceIn;
        }

      default:
        {
          return Curves.ease;
        }
      // break;
    }
  }
}
