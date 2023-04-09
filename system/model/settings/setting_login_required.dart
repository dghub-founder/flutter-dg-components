import 'package:json_annotation/json_annotation.dart';

import 'setting_login_required_child.dart';

part 'setting_login_required.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingLoginRequired {
  String id;
  int enabled;
  String title;
  SettingLoginRequiredChild setting;

  SettingLoginRequired(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingLoginRequired.fromJson(Map<String, dynamic> json) =>
      _$SettingLoginRequiredFromJson(json);
  Map<String, dynamic> toJson() => _$SettingLoginRequiredToJson(this);
}
