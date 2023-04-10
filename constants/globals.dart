library globals;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';
import '../../models/profile.dart';
import '../system/model/settings/setting.dart';

final storage = GetStorage();

Profile? auth = storage.read('auth') == null
    ? null
    : Profile.fromJson(jsonDecode(storage.read('auth')));

bool isDevMode = false;

String host = isDevMode
    ? 'http://192.168.100.25:3000/'
    : 'https://yalla-cheap.longingit.com/';
String apiVersion = 'v1';

String baseUrl = storage.read('baseUrl') ?? '${host}api/$apiVersion/';

IO.Socket socket = IO.io(
    host,
    OptionBuilder()
        .setTransports(["websocket"])
        .disableAutoConnect()
        .setExtraHeaders({
          'authentication': storage.read('token'),
          'Connection': 'upgrade',
          'Upgrade': 'websocket'
        })
        .build());

Setting? settings = storage.read('setting') == null
    ? null
    : Setting.fromJson(jsonDecode(storage.read('setting')));

String defaultTheme = storage.read('default_theme') ?? 'dark_red';

late bool isDarkTheme;

int currentDetailId = 0;

bool enabledAnimation = storage.read('animation') ?? true;

BuildContext? contextMainPage;

final GlobalKey<ScaffoldMessengerState> globalScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
