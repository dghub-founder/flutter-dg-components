import 'package:json_annotation/json_annotation.dart';

import 'setting_more_child.dart';
part 'setting_more.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingMore {
  String id;
  int enabled;
  String title;
  SettingMoreChild setting;

  SettingMore(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingMore.fromJson(Map<String, dynamic> json) =>
      _$SettingMoreFromJson(json);
  Map<String, dynamic> toJson() => _$SettingMoreToJson(this);
}
