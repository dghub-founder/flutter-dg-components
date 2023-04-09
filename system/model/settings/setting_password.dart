import 'package:json_annotation/json_annotation.dart';

import 'setting_password_child.dart';
part 'setting_password.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPassword {
  String id;
  int enabled;
  String title;
  SettingPasswordChild setting;

  SettingPassword(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPassword.fromJson(Map<String, dynamic> json) =>
      _$SettingPasswordFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPasswordToJson(this);
}
