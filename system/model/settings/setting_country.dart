import 'package:json_annotation/json_annotation.dart';

import 'setting_country_child.dart';
part 'setting_country.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingCountry {
  String id;
  int enabled;
  String title;
  SettingCountryChild setting;

  SettingCountry(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingCountry.fromJson(Map<String, dynamic> json) =>
      _$SettingCountryFromJson(json);
  Map<String, dynamic> toJson() => _$SettingCountryToJson(this);
}
