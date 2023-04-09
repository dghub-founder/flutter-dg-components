import 'package:json_annotation/json_annotation.dart';
part 'setting_about.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAbout {
  String id;
  int enabled;
  String title;
  String setting;

  SettingAbout(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingAbout.fromJson(Map<String, dynamic> json) =>
      _$SettingAboutFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAboutToJson(this);
}
