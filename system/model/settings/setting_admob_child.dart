import 'package:json_annotation/json_annotation.dart';
part 'setting_admob_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAdmobChild {
  String app_id;
  String banner;
  String inter;
  String reward;
  String native;

  SettingAdmobChild(
      {required this.app_id,
      required this.banner,
      required this.inter,
      required this.reward,
      required this.native});

  factory SettingAdmobChild.fromJson(Map<String, dynamic> json) =>
      _$SettingAdmobChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAdmobChildToJson(this);
}
