import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:user_app/dg-components/tools/dg-tools.dart';
import '../widgets/snack_bar/show_snackbar.dart';

class FCMService {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
    enableVibration: true,
  );
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  start() async {
    messaging.subscribeToTopic('all');
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    onForegroundMessage();
    try {
      FirebaseMessaging.onBackgroundMessage(_onBackgroundHandler);
    } catch (e) {}
  }

  onForegroundMessage() {
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        RemoteNotification notification = event.notification!;
        AndroidNotification? android = event.notification?.android;

        final data = jsonDecode(event.notification!.body!);
        // var image = data['image'];
        // var text = data['text'];
        // print(image);

        if (android != null && !kIsWeb) {
          DGTools.getImageBytes('').then((value) {
            if (value != null) {
              BigPictureStyleInformation bigPictureStyleInformation =
                  BigPictureStyleInformation(
                ByteArrayAndroidBitmap.fromBase64String(base64Encode(value)),
                largeIcon: ByteArrayAndroidBitmap.fromBase64String(
                    base64Encode(value)),
              );

              flutterLocalNotificationsPlugin.show(
                notification.hashCode,
                notification.title,
                notification.body,
                NotificationDetails(
                  android: AndroidNotificationDetails(
                    channel.id,
                    channel.name,
                    importance: Importance.high,
                    styleInformation: bigPictureStyleInformation,
                    // TODO add a proper drawable resource to android, for now using
                    //      one that already exists in example app.
                    icon: 'launch_background',
                  ),
                ),
              );
            } else {
              flutterLocalNotificationsPlugin.show(
                notification.hashCode,
                notification.title,
                notification.body,
                NotificationDetails(
                  android: AndroidNotificationDetails(
                    channel.id,
                    channel.name,
                    importance: Importance.high,
                    // TODO add a proper drawable resource to android, for now using
                    //      one that already exists in example app.
                    icon: 'launch_background',
                  ),
                ),
              );
            }
          });
        }

        //print(jsonDecode(event.notification!.body!));
      }
    });
  }

  Future<void> _onBackgroundHandler(RemoteMessage event) async {}
}
