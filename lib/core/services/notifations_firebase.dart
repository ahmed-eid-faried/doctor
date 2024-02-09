// import 'package:doctor/core/constant/color.dart';
// import 'package:doctor/core/constant/routes.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// gettokens() async {
//   FirebaseMessaging fbm = FirebaseMessaging.instance;
//   await fbm.getToken().then((value) {
//     print("=============================TOKEN=============================");
//     print(value);
//     print("===============================================================");
//   });
// }

// intialmassage() async {
//   RemoteMessage? massage = await FirebaseMessaging.instance.getInitialMessage();
//   if (massage != null) {
//     Get.toNamed(AppRoute.home);
//   }
// }

// onMessageOpenedApp() {
//   FirebaseMessaging.onMessageOpenedApp.listen((event) {
//     print("FirebaseMessaging  onMessageOpenedApp");
//     Get.defaultDialog(
//       title: event.notification!.title!,
//       middleText: event.notification!.body!,
//       backgroundColor: AppColor.primaryColor.withOpacity(0.6),
//       middleTextStyle: const TextStyle(color: Colors.white),
//     );
//   });
// }

// onBackgroundMessage() {
//   FirebaseMessaging.onBackgroundMessage((message) async {
//     print("FirebaseMessaging  onBackgroundMessage");
//     Get.defaultDialog(
//       title: message.notification!.title!,
//       middleText: message.notification!.body!,
//       backgroundColor: AppColor.primaryColor.withOpacity(0.6),
//       middleTextStyle: const TextStyle(color: Colors.white),
//     );
//   });
// }

// requestPermissionsMessage() async {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   NotificationSettings settings = await messaging.requestPermission(
//     alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: false,
//     sound: true,
//   );

//   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//     print('User granted permission');
//   } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//     print('User granted provisional permission');
//   } else {
//     print('User declined or has not accepted permission');
//   }
// }
