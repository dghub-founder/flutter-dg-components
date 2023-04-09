import 'package:json_annotation/json_annotation.dart';
part 'setting_ads.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAds {
  String id;
  int enabled;
  String title;
  String setting;

  SettingAds(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingAds.fromJson(Map<String, dynamic> json) =>
      _$SettingAdsFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAdsToJson(this);
}
