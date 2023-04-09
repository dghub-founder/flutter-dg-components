import 'package:json_annotation/json_annotation.dart';
part 'setting_stripe_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingStripeChild {
  String pk;
  String acct;

  SettingStripeChild({required this.pk, required this.acct});

  factory SettingStripeChild.fromJson(Map<String, dynamic> json) =>
      _$SettingStripeChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingStripeChildToJson(this);
}
