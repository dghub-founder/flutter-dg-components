import 'package:json_annotation/json_annotation.dart';
import 'package:user_app/dg-components/system/model/settings/setting_app_theme_child.dart';
part 'setting_app_theme.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAppTheme {
  String id;
  int enabled;
  String title;
  SettingAppThemeChild setting;

  SettingAppTheme(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingAppTheme.fromJson(Map<String, dynamic> json) =>
      _$SettingAppThemeFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAppThemeToJson(this);
}
