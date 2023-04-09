import 'package:json_annotation/json_annotation.dart';

import 'setting_admob_child.dart';
part 'setting_admob.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAdmob {
  String id;
  int enabled;
  String title;
  SettingAdmobChild setting;

  SettingAdmob(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingAdmob.fromJson(Map<String, dynamic> json) =>
      _$SettingAdmobFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAdmobToJson(this);
}
