import 'package:json_annotation/json_annotation.dart';
part 'setting_bottom_bar_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingBottomBarChild {
  int design;
  int hide_text;
  int float;
  double radius_top_left;
  double radius_top_right;
  double radius_bottom_left;
  double radius_bottom_right;
  double shadow;

  SettingBottomBarChild(
      {required this.design,
      required this.hide_text,
      required this.float,
      required this.radius_bottom_left,
      required this.radius_bottom_right,
      required this.radius_top_left,
      required this.radius_top_right,
      required this.shadow});

  factory SettingBottomBarChild.fromJson(Map<String, dynamic> json) =>
      _$SettingBottomBarChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingBottomBarChildToJson(this);
}
