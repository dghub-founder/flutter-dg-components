import 'package:json_annotation/json_annotation.dart';
part 'setting_app_theme_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingAppThemeChild {
  int detail_page;
  String default_theme;
  bool enabled_theme_changer;
  String logo_mode;
  double splash_logo_size;
  bool enabled_splash_logo;
  bool enabled_splash_background;

  SettingAppThemeChild(
      {required this.detail_page,
      required this.default_theme,
      required this.enabled_theme_changer,
      required this.logo_mode,
      required this.splash_logo_size,
      required this.enabled_splash_background,
      required this.enabled_splash_logo});

  factory SettingAppThemeChild.fromJson(Map<String, dynamic> json) =>
      _$SettingAppThemeChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingAppThemeChildToJson(this);
}
