import 'package:json_annotation/json_annotation.dart';
part 'setting_plan_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPlanChild {
  String intent;

  SettingPlanChild({required this.intent});

  factory SettingPlanChild.fromJson(Map<String, dynamic> json) =>
      _$SettingPlanChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPlanChildToJson(this);
}
