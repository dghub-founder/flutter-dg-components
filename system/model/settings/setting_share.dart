import 'package:json_annotation/json_annotation.dart';
part 'setting_share.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingShare {
  String id;
  int enabled;
  String title;
  String setting;

  SettingShare(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingShare.fromJson(Map<String, dynamic> json) =>
      _$SettingShareFromJson(json);
  Map<String, dynamic> toJson() => _$SettingShareToJson(this);
}
