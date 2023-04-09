import 'package:json_annotation/json_annotation.dart';
part 'setting_import_data_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingImportDataChild {
  String omdb;

  SettingImportDataChild({required this.omdb});

  factory SettingImportDataChild.fromJson(Map<String, dynamic> json) =>
      _$SettingImportDataChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingImportDataChildToJson(this);
}
