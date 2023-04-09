import 'package:json_annotation/json_annotation.dart';

import 'setting_import_data_child.dart';
part 'setting_import_data.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingImportData {
  String id;
  int enabled;
  String title;
  SettingImportDataChild setting;

  SettingImportData(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingImportData.fromJson(Map<String, dynamic> json) =>
      _$SettingImportDataFromJson(json);
  Map<String, dynamic> toJson() => _$SettingImportDataToJson(this);
}
