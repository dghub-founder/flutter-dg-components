import 'package:json_annotation/json_annotation.dart';
part 'setting_country_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingCountryChild {
  String country_name;
  String country_code;

  SettingCountryChild({required this.country_code, required this.country_name});

  factory SettingCountryChild.fromJson(Map<String, dynamic> json) =>
      _$SettingCountryChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingCountryChildToJson(this);
}
