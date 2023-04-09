import 'package:json_annotation/json_annotation.dart';

import 'setting_google_child.dart';
part 'setting_google.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingGoogle {
  String id;
  int enabled;
  String title;
  SettingGoogleChild setting;

  SettingGoogle(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingGoogle.fromJson(Map<String, dynamic> json) =>
      _$SettingGoogleFromJson(json);
  Map<String, dynamic> toJson() => _$SettingGoogleToJson(this);
}
