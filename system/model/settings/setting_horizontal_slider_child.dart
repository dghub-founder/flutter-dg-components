import 'package:json_annotation/json_annotation.dart';
part 'setting_horizontal_slider_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingHorizontalSliderChild {
  int enabled_category;
  int enabled_latest_new;
  int enabled_cast;
  int enabled_popular;
  int enabled_free_post;

  SettingHorizontalSliderChild(
      {required this.enabled_category,
      required this.enabled_latest_new,
      required this.enabled_cast,
      required this.enabled_popular,
      required this.enabled_free_post});

  factory SettingHorizontalSliderChild.fromJson(Map<String, dynamic> json) =>
      _$SettingHorizontalSliderChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingHorizontalSliderChildToJson(this);
}
