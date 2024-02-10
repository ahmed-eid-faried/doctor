// import 'package:happyshop/controller/orders/orders_view_controller.dart';
// import 'package:happyshop/core/constant/routes.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:get/get.dart';

// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

// FirebaseMessaging messaging = FirebaseMessaging.instance;

// requestPermission() async {
//   NotificationSettings settings = await messaging.requestPermission(
//     alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: false,
//     sound: true,
//   );

//   printf('User granted permission: ${settings.authorizationStatus}');
// }

// fcmconfig() {
//   FirebaseMessaging.onMessage.listen((event) {
//     FlutterRingtonePlayer.playNotification();
//     Get.snackbar(event.notification!.title!, event.notification!.body!);
//     refershPageNotifcation(event.data);
//     printf("notification");
//     printf('title: ${event.notification!.title!}');
//     printf('body: ${event.notification!.body!}');
//   });
// }

// refershPageNotifcation(Map<String, dynamic> data) {
//   printf(data['pageid']);
//   printf(data['pagename']);
//   OrdersViewController controller = Get.find();

//   if (data['pagename'] == "refreshorderpending" &&
//       Get.currentRoute == AppRoute.ordersView) {
//     controller.getData();
//   }
// }
