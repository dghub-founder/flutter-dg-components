import 'package:json_annotation/json_annotation.dart';
part 'image_slider_settings.g.dart';

@JsonSerializable(includeIfNull: true)
class ImageSliderSettings {
  int design;
  int animation;
  int auto_duration_seconds;
  int animation_duration_miliseconds;
  int reverse;
  int auto_play;
  int center_page;
  int image_radius;
  int enabled_label;
  int shadow_frame;
  int enabled_infinite_scroll;
  int enabled_indicator;
  int size;

  ImageSliderSettings({
    this.design = 1,
    this.animation = 1,
    this.animation_duration_miliseconds = 500,
    this.auto_duration_seconds = 3,
    this.auto_play = 1,
    this.center_page = 1,
    this.enabled_label = 0,
    this.image_radius = 10,
    this.reverse = 1,
    this.shadow_frame = 0,
    this.enabled_infinite_scroll = 1,
    this.size = 400,
    this.enabled_indicator = 1,
  });

  factory ImageSliderSettings.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderSettingsFromJson(json);
  // Map<String, dynamic> toJson() => _$ImageSliderSettingToJson(this);
}
