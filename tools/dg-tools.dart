import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:encrypt/encrypt.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';
import '../widget_tools/app_restart.dart';

class DGTools {
  static String numberToReadable(String value) {
    var formattedNumber = NumberFormat.compact().format(double.parse(value));
    return formattedNumber;
  }

  static fullScreen({required bool isEnabled}) {
    if (!kIsWeb) {
      if (isEnabled) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
      } else if (Platform.isAndroid) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
      }
    }
  }

  static String? getHostUrl(String? url) {
    if (url == null) {
      return null;
    } else if (url.contains('http://') || url.contains('https://')) {
      return url;
    } else {
      return host + url;
    }
  }

  static String getFileSize(File file) {
    int sizeInBytes = file.lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return getSize(sizeInMb);
  }

  static String getSize(double size) {
    String hrSize = "";

    double b = size;
    double k = size / 1024.0;
    double m = ((size / 1024.0) / 1024.0);
    double g = (((size / 1024.0) / 1024.0) / 1024.0);
    double t = ((((size / 1024.0) / 1024.0) / 1024.0) / 1024.0);

    if (t > 1) {
      hrSize = t.toStringAsFixed(2) + " TB";
    } else if (g > 1) {
      hrSize = g.toStringAsFixed(2) + " GB";
    } else if (m > 1) {
      hrSize = m.toStringAsFixed(2) + " MB";
    } else if (k > 1) {
      hrSize = k.toStringAsFixed(2) + " KB";
    } else {
      hrSize = b.toStringAsFixed(2) + " Bytes";
    }
    return hrSize;
  }

  static navBarColor({required Color color}) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness:
            isDarkTheme ? Brightness.light : Brightness.dark,
      ));
    }
  }

  static statusBarColor({required Color color}) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarIconBrightness:
              isDarkTheme ? Brightness.light : Brightness.dark,
          statusBarBrightness: isDarkTheme ? Brightness.light : Brightness.dark,
          statusBarColor: color));
    }
  }

  static double keyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  static restartApp(BuildContext context) {
    AppRestart.restart(context);
  }

  static Future<Uint8List?> getImageBytes(String imageUrl) async {
    if (imageUrl == '') {
      return null;
    }
    http.Response response = await http.get(Uri.parse(imageUrl));
    return response.bodyBytes; //Uint8List
  }

  static String encryptAES(
      {required String text,
      String password = 'DGHubFounderAndCEOIsMinThantHtet'}) {
    try {
      var mykey = password;
      var myiv = 'ThisIsASecuredBlock';
      final keyUtf8 = utf8.encode(mykey);
      final ivUtf8 = utf8.encode(myiv);
      final key = sha256.convert(keyUtf8).toString().substring(0, 32);
      final iv = sha256.convert(ivUtf8).toString().substring(0, 16);
      final _iv = IV.fromUtf8(iv);

      Encrypter encrypter =
          Encrypter(AES(encrypt.Key.fromUtf8(key), mode: AESMode.cbc));

      return encrypter.encrypt(text, iv: _iv).base64;
    } catch (e) {
      print('Encrypt Error: $e');
      return text;
    }
  }

  static String decryptAES(
      {required String text,
      String password = 'DGHubFounderAndCEOIsMinThantHtet'}) {
    try {
      var mykey = password;
      var myiv = 'ThisIsASecuredBlock';
      final keyUtf8 = utf8.encode(mykey);
      final ivUtf8 = utf8.encode(myiv);
      final key = sha256.convert(keyUtf8).toString().substring(0, 32);
      final iv = sha256.convert(ivUtf8).toString().substring(0, 16);
      final _iv = IV.fromUtf8(iv);

      Encrypter encrypter =
          Encrypter(AES(encrypt.Key.fromUtf8(key), mode: AESMode.cbc));

      return encrypter.decrypt(encrypt.Encrypted.fromBase64(text.trim()),
          iv: _iv);
    } catch (e) {
      print('Decrypt Error: $e');
      return text;
    }
  }

  static String priceText(double price) {
    var p = NumberFormat.simpleCurrency().format(price).replaceAll('\$', '');
    if (settings!.price.setting.is_right) {
      return settings!.price.setting.mode == 'symbol'
          ? p + settings!.price.setting.symbol
          : p + settings!.price.setting.currency;
    } else {
      return settings!.price.setting.mode == 'symbol'
          ? settings!.price.setting.symbol + p
          : settings!.price.setting.currency + p;
    }
  }

  static String priceDiscount(
      {required int discountPercent, required double price}) {
    return priceText(((100 - discountPercent) * price / 100));
  }

  static double priceDiscountDouble(
      {required int discountPercent, required double price}) {
    return ((100 - discountPercent) * price / 100);
  }

  static String getTime(int d) {
    final df = DateFormat("mm:ss");
    final formattedString =
        df.format(DateTime.fromMillisecondsSinceEpoch(d, isUtc: true));
    return formattedString;
  }

  static bool appTypeMultipleShop() {
    if (settings!.more.setting.app_type == 'multiple_shop') {
      return true;
    }
    return false;
  }

  static bool appTypeMultipleShopOrSingleShop() {
    if (settings!.more.setting.app_type == 'shop' ||
        settings!.more.setting.app_type == 'multiple_shop') {
      return true;
    }
    return false;
  }

  static bool appTypeShop() {
    if (settings!.more.setting.app_type == 'shop') {
      return true;
    }
    return false;
  }

  static bool appTypeMovie() {
    if (settings!.more.setting.app_type == 'movie') {
      return true;
    }
    return false;
  }

  static String dateFormat(String date) {
    return DateFormat.yMEd().add_jms().format(DateTime.parse(date).toLocal());
  }
}
