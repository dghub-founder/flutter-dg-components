// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Setting _$SettingFromJson(Map<String, dynamic> json) => Setting(
      verification: SettingVerification.fromJson(
          json['verification'] as Map<String, dynamic>),
      ads: SettingAds.fromJson(json['ads'] as Map<String, dynamic>),
      more: SettingMore.fromJson(json['more'] as Map<String, dynamic>),
      admob: SettingAdmob.fromJson(json['admob'] as Map<String, dynamic>),
      login:
          SettingLoginRequired.fromJson(json['login'] as Map<String, dynamic>),
      onboarding: SettingOnboarding.fromJson(
          json['onboarding'] as Map<String, dynamic>),
      bottom_bar:
          SettingBottomBar.fromJson(json['bottom_bar'] as Map<String, dynamic>),
      header_bar:
          SettingHeaderBar.fromJson(json['header_bar'] as Map<String, dynamic>),
      app_password: SettingPassword.fromJson(
          json['app_password'] as Map<String, dynamic>),
      about: SettingAbout.fromJson(json['about'] as Map<String, dynamic>),
      plan: SettingPlan.fromJson(json['plan'] as Map<String, dynamic>),
      privacy: SettingPrivacy.fromJson(json['privacy'] as Map<String, dynamic>),
      share_app:
          SettingShare.fromJson(json['share_app'] as Map<String, dynamic>),
      unity: SettingUnity.fromJson(json['unity'] as Map<String, dynamic>),
      import_data: SettingImportData.fromJson(
          json['import_data'] as Map<String, dynamic>),
      firebase:
          SettingFirebase.fromJson(json['firebase'] as Map<String, dynamic>),
      app_theme:
          SettingAppTheme.fromJson(json['app_theme'] as Map<String, dynamic>),
      paypal: SettingPaypal.fromJson(json['paypal'] as Map<String, dynamic>),
      google: SettingGoogle.fromJson(json['google'] as Map<String, dynamic>),
      stripe: SettingStripe.fromJson(json['stripe'] as Map<String, dynamic>),
      price: SettingPrice.fromJson(json['price'] as Map<String, dynamic>),
      payment: SettingPayment.fromJson(json['payment'] as Map<String, dynamic>),
      horizontal_slider: SettingHorizontalSlider.fromJson(
          json['horizontal_slider'] as Map<String, dynamic>),
      country: SettingCountry.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      'admob': instance.admob,
      'login': instance.login,
      'onboarding': instance.onboarding,
      'bottom_bar': instance.bottom_bar,
      'header_bar': instance.header_bar,
      'app_password': instance.app_password,
      'about': instance.about,
      'privacy': instance.privacy,
      'share_app': instance.share_app,
      'plan': instance.plan,
      'unity': instance.unity,
      'app_theme': instance.app_theme,
      'import_data': instance.import_data,
      'firebase': instance.firebase,
      'more': instance.more,
      'paypal': instance.paypal,
      'google': instance.google,
      'stripe': instance.stripe,
      'price': instance.price,
      'payment': instance.payment,
      'ads': instance.ads,
      'horizontal_slider': instance.horizontal_slider,
      'verification': instance.verification,
      'country': instance.country,
    };
