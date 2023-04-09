import 'package:json_annotation/json_annotation.dart';

import 'setting_paypal_child.dart';
part 'setting_paypal.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPaypal {
  String id;
  int enabled;
  String title;
  SettingPaypalChild setting;

  SettingPaypal(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPaypal.fromJson(Map<String, dynamic> json) =>
      _$SettingPaypalFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPaypalToJson(this);
}
