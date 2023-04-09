import 'package:json_annotation/json_annotation.dart';
part 'setting_login_required_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingLoginRequiredChild {
  int enabled_google;
  int enabled_facebook;
  int enabled_form;
  int enabled_phone;

  SettingLoginRequiredChild(
      {required this.enabled_facebook,
      required this.enabled_form,
      required this.enabled_google,
      required this.enabled_phone
      });

  factory SettingLoginRequiredChild.fromJson(Map<String, dynamic> json) =>
      _$SettingLoginRequiredChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingLoginRequiredChildToJson(this);
}
