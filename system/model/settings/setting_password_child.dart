import 'package:json_annotation/json_annotation.dart';
part 'setting_password_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPasswordChild {
  String fake_password;
  String real_password;

  SettingPasswordChild(
      {required this.fake_password, required this.real_password});

  factory SettingPasswordChild.fromJson(Map<String, dynamic> json) =>
      _$SettingPasswordChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPasswordChildToJson(this);
}
