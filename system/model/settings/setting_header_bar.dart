import 'package:json_annotation/json_annotation.dart';

import 'setting_header_bar_child.dart';
part 'setting_header_bar.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingHeaderBar {
  String id;
  int enabled;
  String title;
  SettingHeaderBarChild setting;

  SettingHeaderBar(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingHeaderBar.fromJson(Map<String, dynamic> json) =>
      _$SettingHeaderBarFromJson(json);
  Map<String, dynamic> toJson() => _$SettingHeaderBarToJson(this);
}
