// import 'package:doctor/data/model/mycartmodel.dart';
// import 'package:flutter/material.dart';
// import 'package:pay/pay.dart';

// class CustomGooglePay extends StatelessWidget {
//   const CustomGooglePay({
//     super.key,
//     this.checkoutRequestData,
//     required this.price,
//     this.countryCode = "US",
//     this.currencyCode = "USD",
//     this.merchantId = '01234567890123456789',
//     this.merchantName = "eccomerce",
//     required this.shipping,
//     this.couponVal = 0,
//     required this.items,
//   });
//   final Function? checkoutRequestData;
//   void onGooglePayResult(paymentResult) {
//     checkoutRequestData!();
//   }

//   final String price;
//   final String countryCode;
//   final String currencyCode;
//   final String merchantId;
//   final String merchantName;
//   final String shipping;
//   final double? couponVal;
//   final List<MyCartViewModel> items;

//   @override
//   Widget build(BuildContext context) {
//     List<PaymentItem> paymentItems = [
//       ...List.generate(
//         items.length,
//         (index) => PaymentItem(
//           // "quantity": int.parse(item.countitems ?? '0'),
//           label: items[index].itemsName,
//           type: PaymentItemType.item,
//           amount: (int.parse(items[index].countitems ?? '0') *
//                   (double.parse(items[index].finalpriceofoneitem!) -
//                       (((couponVal ?? 0) *
//                               double.parse(items[index].finalpriceofoneitem!)) /
//                           100)))
//               .ceil()
//               .toString(),
//           status: PaymentItemStatus.pending,
//         ),
//       ),
//       PaymentItem(
//         label: 'Total',
//         amount: price,
//         status: PaymentItemStatus.final_price,
//         type: PaymentItemType.total,
//       )
//     ];
//     const String defaultGooglePay = '''{
//   "provider": "google_pay",
//   "data": {
//     "environment": "TEST",
//     "apiVersion": 2,
//     "apiVersionMinor": 0,
//     "allowedPaymentMethods": [
//       {
//         "type": "CARD",
//         "tokenizationSpecification": {
//           "type": "PAYMENT_GATEWAY",
//           "parameters": {
//             "gateway": "example",
//             "gatewayMerchantId": "gatewayMerchantId"
//           }
//         },
//         "parameters": {
//           "allowedCardNetworks": ["VISA", "MASTERCARD"],
//           "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
//           "billingAddressRequired": true,
//           "billingAddressParameters": {
//             "format": "FULL",
//             "phoneNumberRequired": true
//           }
//         }
//       }
//     ],
//     "merchantInfo": {
//       "merchantId": "01234567890123456789",
//       "merchantName": "Example Merchant Name"
//     },
//     "transactionInfo": {
//       "countryCode": "US",
//       "currencyCode": "USD"
//     }
//   }
// }''';

//     return GooglePayButton(
//       paymentConfiguration:
//           PaymentConfiguration.fromJsonString(defaultGooglePay),
//       paymentItems: paymentItems,
//       type: GooglePayButtonType.pay,
//       margin: const EdgeInsets.only(top: 15.0),
//       onPaymentResult: onGooglePayResult,
//       loadingIndicator: const Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
