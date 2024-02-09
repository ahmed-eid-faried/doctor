// import 'dart:convert';
// import 'package:fawry_sdk/model/bill_item.dart';
// import 'package:fawry_sdk/model/fawry_launch_model.dart';
// import 'package:fawry_sdk/model/launch_customer_model.dart';
// import 'package:fawry_sdk/model/launch_merchant_model.dart';
// import 'package:fawry_sdk/model/payment_methods.dart';
// import 'package:flutter/material.dart';
// import 'package:fawry_sdk/model/response.dart';
// import 'package:fawry_sdk/fawry_utils.dart';
// import 'dart:async';
// import 'package:fawry_sdk/fawry_sdk.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late StreamSubscription? _fawryCallbackResultStream;

//   @override
//   void initState() {
//     super.initState();
//     initSDKCallback();
//   }

//   Future<void> initSDKCallback() async {
//     try {
//       _fawryCallbackResultStream =
//           FawrySdk.instance.callbackResultStream().listen((event) {
//         setState(() {
//           ResponseStatus response = ResponseStatus.fromJson(jsonDecode(event));
//           switch (response.status) {
//             case FawrySdk.RESPONSE_SUCCESS:
//               {
//                 //Success status
//                 debugPrint('Message : ${response.message}');
//                 //Success json response
//                 debugPrint('Json Response : ${response.data}');
//               }
//               break;
//             case FawrySdk.RESPONSE_ERROR:
//               {
//                 debugPrint('Error : ${response.message}');
//               }
//               break;
//             case FawrySdk.RESPONSE_PAYMENT_COMPLETED:
//               {
//                 debugPrint(
//                     'Payment Completed : ${response.message} , ${response.data}');
//               }
//               break;
//           }
//         });
//       });
//     } catch (ex) {
//       debugPrint(ex.toString());
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _fawryCallbackResultStream?.cancel();
//   }

//   Future<void> initiateSDK() async {
//     BillItem item =
//         BillItem(itemId: "ITEM_ID", description: "", quantity: 4, price: 15);

//     List<BillItem>? chargeItems = [item];

//     LaunchCustomerModel customerModel = LaunchCustomerModel(
//         customerName: "John Doe",
//         customerEmail: "john.doe@xyz.com",
//         customerMobile: "+201000000000");

//     LaunchMerchantModel merchantModel = LaunchMerchantModel(
//       merchantCode: "MERCHANT_CODE",
//       merchantRefNum: FawryUtils.randomAlphaNumeric(10),
//       secureKey: "SECURE_KEY or SECRET_CODE",
//     );

//     FawryLaunchModel model = FawryLaunchModel(
//         allow3DPayment: true,
//         chargeItems: chargeItems,
//         launchCustomerModel: customerModel,
//         launchMerchantModel: merchantModel,
//         skipLogin: true,
//         skipReceipt: true,
//         payWithCardToken:
//             false, //This flag enables/disables user cards tokenization,
//         //if 'payWithCardToken' is enabled you need to define customerProfileId in LaunchCustomerModel
//         paymentMethods: PaymentMethods.ALL);

//     await FawrySdk.instance.init(
//         launchModel: model,
//         baseURL:
//             "https://atfawry.fawrystaging.com/", // You will need to change this url when you go live
//         lang: FawrySdk.LANGUAGE_ENGLISH);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fawry SDK Flutter example'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 initiateSDK();
//               },
//               child: const Text("Init fawry SDK"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
