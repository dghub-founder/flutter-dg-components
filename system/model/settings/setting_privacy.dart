import 'package:json_annotation/json_annotation.dart';
part 'setting_privacy.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPrivacy {
  String id;
  int enabled;
  String title;
  String setting;

  SettingPrivacy(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPrivacy.fromJson(Map<String, dynamic> json) =>
      _$SettingPrivacyFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPrivacyToJson(this);
}
