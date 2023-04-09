import 'package:json_annotation/json_annotation.dart';
part 'setting_firebase_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingFirebaseChild {
  String api_key;
  String app_id;
  String messaging_sender_id;
  String project_id;
  String auth_domain;
  String storage_bucket;
  String measurement_id;

  SettingFirebaseChild(
      {required this.api_key,
      required this.app_id,
      required this.measurement_id,
      required this.messaging_sender_id,
      required this.auth_domain,
      required this.project_id,
      required this.storage_bucket});

  factory SettingFirebaseChild.fromJson(Map<String, dynamic> json) =>
      _$SettingFirebaseChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingFirebaseChildToJson(this);
}
