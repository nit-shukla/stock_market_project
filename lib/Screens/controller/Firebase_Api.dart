<<<<<<< HEAD
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBagroundMessage(RemoteMessage message) async {
  print('Title:${message.notification?.title}');
  print('Body:${message.notification?.body}');
  print('Payload:${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;
  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('Token: $fCMToken');
    FirebaseMessaging.onBackgroundMessage(handleBagroundMessage);
  }
}
=======
// import 'package:firebase_messaging/firebase_messaging.dart';
//
// Future<void> handleBagroundMessage(RemoteMessage message) async {
//   print('Title:${message.notification?.title}');
//   print('Body:${message.notification?.body}');
//   print('Payload:${message.data}');
// }
//
// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;
//   Future<void> initNotifications() async {
//     await _firebaseMessaging.requestPermission();
//     final fCMToken = await _firebaseMessaging.getToken();
//     print('Token: $fCMToken');
//     FirebaseMessaging.onBackgroundMessage(handleBagroundMessage);
//   }
// }
>>>>>>> f4d6e5be3f5b3532dd6d10dfa7ed9f24d52ec2a2
