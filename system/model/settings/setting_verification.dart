import 'package:json_annotation/json_annotation.dart';

import 'setting_verification_child.dart';
part 'setting_verification.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingVerification {
  String id;
  int enabled;
  String title;
  SettingVerificationChild setting;

  SettingVerification(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingVerification.fromJson(Map<String, dynamic> json) =>
      _$SettingVerificationFromJson(json);
  Map<String, dynamic> toJson() => _$SettingVerificationToJson(this);
}
