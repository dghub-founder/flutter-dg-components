import 'package:json_annotation/json_annotation.dart';

import 'setting_firebase_child.dart';
part 'setting_firebase.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingFirebase {
  String id;
  int enabled;
  String title;
  SettingFirebaseChild setting;

  SettingFirebase(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingFirebase.fromJson(Map<String, dynamic> json) =>
      _$SettingFirebaseFromJson(json);
  Map<String, dynamic> toJson() => _$SettingFirebaseToJson(this);
}
