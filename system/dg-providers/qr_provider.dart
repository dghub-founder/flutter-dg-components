import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:user_app/dg-components/constants/extensions.dart';
import 'package:user_app/dg-components/widgets/bottomsheet/bottom_sheet.dart';
import 'package:user_app/dg-components/widgets/bottomsheet/bottom_sheet_message.dart';
import 'package:user_app/dg-components/widgets/snack_bar/show_snackbar.dart';

import '../../../providers/address/address_store_provider.dart';
import '../../../providers/room/room_provider.dart';
import '../../../providers/store/store_detail_provider.dart';
import '../../routes/router.dart';

class QRProvider extends ChangeNotifier {
  QRViewController? controller;

  String getCode = '';
  setCode({required BuildContext context, required String code}) {
    try {
      var json = jsonDecode(code);
      context
          .read<RoomProvider>()
          .getDetail(context: context, id: json['room_id']);
      getCode = code;
      notifyListeners();
      print(json['room_id']);
    } catch (e) {
      showSnackBar(context: context, title: 'Room ID Not working');
    }
  }
}
