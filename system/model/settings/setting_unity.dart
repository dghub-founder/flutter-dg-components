import 'package:json_annotation/json_annotation.dart';

import 'setting_unity_child.dart';
part 'setting_unity.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingUnity {
  String id;
  int enabled;
  String title;
  SettingUnityChild setting;

  SettingUnity(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingUnity.fromJson(Map<String, dynamic> json) =>
      _$SettingUnityFromJson(json);
  Map<String, dynamic> toJson() => _$SettingUnityToJson(this);
}
