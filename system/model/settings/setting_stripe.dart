import 'package:json_annotation/json_annotation.dart';

import 'setting_stripe_child.dart';
part 'setting_stripe.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingStripe {
  String id;
  int enabled;
  String title;
  SettingStripeChild setting;

  SettingStripe(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingStripe.fromJson(Map<String, dynamic> json) =>
      _$SettingStripeFromJson(json);
  Map<String, dynamic> toJson() => _$SettingStripeToJson(this);
}
