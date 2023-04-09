import 'package:json_annotation/json_annotation.dart';
part 'setting_verification_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingVerificationChild {
  int email_dismissible;
  int otp_dismissible;
  int otp_enabled;
  int email_enabled;
  SettingVerificationChild(
      {required this.email_dismissible,
      required this.otp_dismissible,
      required this.email_enabled,
      required this.otp_enabled});

  factory SettingVerificationChild.fromJson(Map<String, dynamic> json) =>
      _$SettingVerificationChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingVerificationChildToJson(this);
}
