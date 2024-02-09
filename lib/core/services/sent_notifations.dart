// // Replace with server token from firebase console settings.
// import 'dart:convert';
// import 'package:doctor/core/services/notifations_firebase.dart';
// import 'package:http/http.dart' as http;

// import 'package:firebase_messaging/firebase_messaging.dart';

// const String serverToken = '<Server-Token>';
// const String topics = 'ahmed';

// final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
// subscribeToTopic(String topic) async {
//   await firebaseMessaging.subscribeToTopic(topic);
// }

// unsubscribeFromTopic(String topic) async {
//   firebaseMessaging.unsubscribeFromTopic(topic);
// }

// sendAndRetrieveMessage() async {
//   await requestPermissionsMessage();
//   await http.post(
//     Uri.parse('https://fcm.googleapis.com/fcm/send'),
//     headers: <String, String>{
//       'Content-Type': 'application/json',
//       'Authorization': 'key=$serverToken',
//     },
//     body: jsonEncode(
//       <String, dynamic>{
//         'notification': <String, dynamic>{
//           'body': 'this is a body',
//           'title': 'this is a title'
//         },
//         'priority': 'high',
//         'data': <String, dynamic>{
//           'click_action': 'FLUTTER_NOTIFICATION_CLICK',
//           'id': '1',
//           'status': 'done',
//           'to': "/topics/$topics",
//         },
//         // 'to': await firebaseMessaging.getToken(),
//         'to': "/topics/$topics",
//       },
//     ),
//   );
// }
