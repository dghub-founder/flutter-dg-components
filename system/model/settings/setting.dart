import 'package:json_annotation/json_annotation.dart';
import 'package:user_app/dg-components/system/model/settings/setting_app_theme.dart';
import 'package:user_app/dg-components/system/model/settings/setting_country.dart';
import 'package:user_app/dg-components/system/model/settings/setting_horizontal_slider.dart';
import 'package:user_app/dg-components/system/model/settings/setting_payment.dart';
import 'package:user_app/dg-components/system/model/settings/setting_price.dart';
import 'package:user_app/dg-components/system/model/settings/setting_stripe.dart';

import 'setting_about.dart';
import 'setting_admob.dart';
import 'setting_ads.dart';
import 'setting_bottom_bar.dart';
import 'setting_verification.dart';
import 'setting_firebase.dart';
import 'setting_google.dart';
import 'setting_header_bar.dart';
import 'setting_import_data.dart';
import 'setting_login_required.dart';
import 'setting_more.dart';
import 'setting_onboarding.dart';
import 'setting_password.dart';
import 'setting_paypal.dart';
import 'setting_plan.dart';
import 'setting_privacy.dart';
import 'setting_share.dart';
import 'setting_unity.dart';

part 'setting.g.dart';

@JsonSerializable(includeIfNull: true)
class Setting {
  late SettingAdmob admob;
  late SettingLoginRequired login;
  late SettingOnboarding onboarding;
  late SettingBottomBar bottom_bar;
  late SettingHeaderBar header_bar;
  late SettingPassword app_password;
  late SettingAbout about;
  late SettingPrivacy privacy;
  late SettingShare share_app;
  late SettingPlan plan;
  late SettingUnity unity;
  late SettingAppTheme app_theme;
  late SettingImportData import_data;
  late SettingFirebase firebase;
  late SettingMore more;
  late SettingPaypal paypal;
  late SettingGoogle google;
  late SettingStripe stripe;
  late SettingPrice price;
  late SettingPayment payment;
  late SettingAds ads;
  late SettingHorizontalSlider horizontal_slider;
  late SettingVerification verification;
  late SettingCountry country;

  Setting(
      {required this.verification,
      required this.ads,
      required this.more,
      required this.admob,
      required this.login,
      required this.onboarding,
      required this.bottom_bar,
      required this.header_bar,
      required this.app_password,
      required this.about,
      required this.plan,
      required this.privacy,
      required this.share_app,
      required this.unity,
      required this.import_data,
      required this.firebase,
      required this.app_theme,
      required this.paypal,
      required this.google,
      required this.stripe,
      required this.price,
      required this.payment,
      required this.horizontal_slider,
      required this.country});

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
  // Map<String, dynamic> toJson() => _$PostToJson(this);
}
