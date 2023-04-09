import 'package:json_annotation/json_annotation.dart';
part 'setting_header_bar_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingHeaderBarChild {
  int design;
  String title;
  int hide_drawer_menu;
  int hide_profile;
  double? icon_size;
  int? enabled_scroll_to_hide;

  SettingHeaderBarChild(
      {this.enabled_scroll_to_hide = 1,
      this.icon_size,
      required this.design,
      required this.hide_drawer_menu,
      required this.hide_profile,
      required this.title});

  factory SettingHeaderBarChild.fromJson(Map<String, dynamic> json) =>
      _$SettingHeaderBarChildFromJson(json);
  // Map<String, dynamic> toJson() => _$ImageSliderSettingToJson(this);
}
