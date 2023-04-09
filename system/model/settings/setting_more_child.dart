import 'package:json_annotation/json_annotation.dart';
part 'setting_more_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingMoreChild {
  String app_name;
  String app_type;

  SettingMoreChild({required this.app_name, required this.app_type});

  factory SettingMoreChild.fromJson(Map<String, dynamic> json) =>
      _$SettingMoreChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingMoreChildToJson(this);
}
