import 'package:json_annotation/json_annotation.dart';

import 'setting_plan_child.dart';
part 'setting_plan.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPlan {
  String id;
  int enabled;
  String title;
  SettingPlanChild setting;

  SettingPlan(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPlan.fromJson(Map<String, dynamic> json) =>
      _$SettingPlanFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPlanToJson(this);
}
