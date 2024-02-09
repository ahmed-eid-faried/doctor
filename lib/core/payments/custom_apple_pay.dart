// import 'package:doctor/data/model/mycartmodel.dart';
// import 'package:flutter/material.dart';
// import 'package:pay/pay.dart';

// class CustomApplePay extends StatelessWidget {
//   const CustomApplePay({
//     super.key,
//     this.checkoutRequestData,
//     required this.price,
//     this.countryCode = "US",
//     this.currencyCode = "USD",
//     this.merchantIdentifier = "merchant.com.sams.fish",
//     this.merchantName = "eccomerce",
//     required this.shipping,
//     this.couponVal = 0,
//     required this.items,
//   });
//   final Function? checkoutRequestData;
//   void onApplePayResult(paymentResult) {
//     checkoutRequestData!();
//   }

//   final String price;
//   final String countryCode;
//   final String currencyCode;
//   final String merchantIdentifier;
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
//     const String defaultApplePay = '''{
//   "provider": "apple_pay",
//   "data": {
//     "merchantIdentifier": "merchant.com.sams.fish",
//     "displayName": "Sam's Fish",
//     "merchantCapabilities": ["3DS", "debit", "credit"],
//     "supportedNetworks": ["amex", "visa", "discover", "masterCard"],
//     "countryCode": "US",
//     "currencyCode": "USD",
//     "requiredBillingContactFields": ["emailAddress", "name", "phoneNumber", "postalAddress"],
//     "requiredShippingContactFields": [],
//     "shippingMethods": [
//       {
//         "amount": "0.00",
//         "detail": "Available within an hour",
//         "identifier": "in_store_pickup",
//         "label": "In-Store Pickup"
//       },
//       {
//         "amount": "4.99",
//         "detail": "5-8 Business Days",
//         "identifier": "flat_rate_shipping_id_2",
//         "label": "UPS Ground"
//       },
//       {
//         "amount": "29.99",
//         "detail": "1-3 Business Days",
//         "identifier": "flat_rate_shipping_id_1",
//         "label": "FedEx Priority Mail"
//       }
//     ]
//   }
// }''';
//     return ApplePayButton(
//       paymentConfiguration:
//           PaymentConfiguration.fromJsonString(defaultApplePay),
//       paymentItems: paymentItems,
//       style: ApplePayButtonStyle.black,
//       type: ApplePayButtonType.buy,
//       margin: const EdgeInsets.only(top: 15.0),
//       onPaymentResult: onApplePayResult,
//       loadingIndicator: const Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
