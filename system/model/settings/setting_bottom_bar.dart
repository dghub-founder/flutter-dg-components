import 'package:json_annotation/json_annotation.dart';

import 'setting_bottom_bar_child.dart';
part 'setting_bottom_bar.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingBottomBar {
  String id;
  int enabled;
  String title;
  SettingBottomBarChild setting;

  SettingBottomBar(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingBottomBar.fromJson(Map<String, dynamic> json) =>
      _$SettingBottomBarFromJson(json);
  Map<String, dynamic> toJson() => _$SettingBottomBarToJson(this);
}
