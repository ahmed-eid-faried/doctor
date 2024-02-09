// import 'dart:convert';

// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:doctor/core/payments/payment_keys.dart';
// import 'package:http/http.dart' as http;

// abstract class PaymentManager {
//   static Future<void> makePayment(int amount, String currency,
//       String countryCode, void Function() onConfirm) async {
//     try {
//       String clientSecret =
//           await _getClientSecret((amount * 100).toString(), currency);
//       await _initializePaymentSheet(clientSecret, currency, countryCode);
//       await Stripe.instance.presentPaymentSheet();
//       onConfirm();
//     } catch (error) {
//       print("error $error");
//       throw Exception(error.toString());
//     }
//   }

//   static Future<void> _initializePaymentSheet(
//       String clientSecret, String currency, String countryCode) async {
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         paymentIntentClientSecret: clientSecret,
//         merchantDisplayName: "Basel",
//         // googlePay: PaymentSheetGooglePay(
//         //     merchantCountryCode: countryCode, currencyCode: currency),
//         // applePay: PaymentSheetApplePay(merchantCountryCode: countryCode)
//       ),
//     );
//   }

//   static Future<String> _getClientSecret(String amount, String currency) async {
//     Uri url = Uri.parse('https://api.stripe.com/v1/payment_intents');
//     var response = await http.post(
//       url,
//       headers: {
//         'Authorization': 'Bearer ${ApiKeys.secretKeyStripe}',
//         'Content-Type': 'application/x-www-form-urlencoded'
//       },
//       body: {
//         'amount': amount,
//         'currency': currency,
//       },
//     );
//     var responsebody = jsonDecode(response.body);
//     print("responsebody $responsebody");
//     return responsebody["client_secret"];
//   }
// }
