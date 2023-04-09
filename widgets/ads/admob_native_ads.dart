import 'package:flutter/material.dart';
import 'package:native_ads_flutter/native_ads.dart';

import '../../constants/globals.dart';

class AdmobNativeAds extends StatefulWidget {
  const AdmobNativeAds({Key? key}) : super(key: key);

  @override
  State<AdmobNativeAds> createState() => _AdmobNativeAdsState();
}

class _AdmobNativeAdsState extends State<AdmobNativeAds> {
  final _controller = NativeAdmobController();

  @override
  void initState() {
    // _controller.setNonPersonalizedAds(true);
    //  _controller.setTestDeviceIds([]);
    // _controller.setAdUnitID('ca-app-pub-3940256099942544/1044960115');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NativeAdmob(
      adUnitID:
          'ca-app-pub-3940256099942544/1044960115', //settings!.admob.setting.native,
      loading: SizedBox(),
      error: SizedBox(),
      controller: _controller,
      type: NativeAdmobType.full,
      options: NativeAdmobOptions(
        ratingColor: Colors.orange,
      ),
    );
  }
}
