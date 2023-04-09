import 'package:json_annotation/json_annotation.dart';
import 'package:user_app/dg-components/system/model/settings/setting_horizontal_slider_child.dart';
part 'setting_horizontal_slider.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingHorizontalSlider {
  String id;
  int enabled;
  String title;
  SettingHorizontalSliderChild setting;

  SettingHorizontalSlider(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingHorizontalSlider.fromJson(Map<String, dynamic> json) =>
      _$SettingHorizontalSliderFromJson(json);
  Map<String, dynamic> toJson() => _$SettingHorizontalSliderToJson(this);
}
