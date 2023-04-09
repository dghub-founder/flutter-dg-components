import 'package:json_annotation/json_annotation.dart';
part 'setting_google_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingGoogleChild {
  String client_id;

  SettingGoogleChild({required this.client_id});

  factory SettingGoogleChild.fromJson(Map<String, dynamic> json) =>
      _$SettingGoogleChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingGoogleChildToJson(this);
}
