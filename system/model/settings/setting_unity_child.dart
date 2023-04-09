import 'package:json_annotation/json_annotation.dart';
part 'setting_unity_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingUnityChild {
  String placement_id;
  String game_id;

  SettingUnityChild({
    required this.placement_id,
    required this.game_id,
  });

  factory SettingUnityChild.fromJson(Map<String, dynamic> json) =>
      _$SettingUnityChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingUnityChildToJson(this);
}
