import 'package:json_annotation/json_annotation.dart';
import 'package:user_app/dg-components/system/model/settings/setting_price_child.dart';
part 'setting_price.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPrice {
  String id;
  int enabled;
  String title;
  SettingPriceChild setting;

  SettingPrice(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPrice.fromJson(Map<String, dynamic> json) =>
      _$SettingPriceFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPriceToJson(this);
}
