import 'package:json_annotation/json_annotation.dart';
part 'setting_onboarding.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingOnboarding {
  String id;
  int enabled;
  String title;
  Map<String, dynamic> setting;

  SettingOnboarding(
      {required this.enabled,
      required this.id,
      required this.title,
      required this.setting});

  factory SettingOnboarding.fromJson(Map<String, dynamic> json) =>
      _$SettingOnboardingFromJson(json);
  Map<String, dynamic> toJson() => _$SettingOnboardingToJson(this);
}
