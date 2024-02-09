// // Fawry
// import 'package:doctor/core/function/translatelang.dart';
// import 'package:fawry_sdk/fawry_sdk.dart';
// import 'package:fawry_sdk/model/bill_item.dart';
// import 'package:fawry_sdk/model/fawry_launch_model.dart';
// import 'package:fawry_sdk/model/launch_customer_model.dart';
// import 'package:fawry_sdk/model/launch_merchant_model.dart';
// import 'package:fawry_sdk/model/payment_methods.dart';

// init() async {
// // Create a charge item
//   BillItem item = BillItem(
//     itemId: "ITEM_ID",
//     description: "",
//     quantity: 4,
//     price: 15,
//   );

// // Create a customer model
//   LaunchCustomerModel customerModel = LaunchCustomerModel(
//     customerName: "John Doe",
//     customerEmail: "john.doe@xyz.com",
//     customerMobile: "+201000000000",
//   );

// // Create a merchant model
//   LaunchMerchantModel merchantModel = LaunchMerchantModel(
//     merchantCode: "MERCHANT_CODE",
//     merchantRefNum: "MERCHANT_REF_NUM",
//     secureKey: "SECURE_KEY or SECRET_CODE",
//   );

// // Create the FawryLaunchModel
//   FawryLaunchModel fawryLaunchModel = FawryLaunchModel(
//     allow3DPayment: true,
//     chargeItems: [item],
//     launchCustomerModel: customerModel,
//     launchMerchantModel: merchantModel,
//     skipLogin: true,
//     skipReceipt: false,
//     payWithCardToken: false,
//     paymentMethods: PaymentMethods.ALL,
//   );

//   await FawrySdk.instance.init(
//       launchModel: fawryLaunchModel,
//       baseURL: "BASE_URL",
//       lang: translateMultiLang([
//         TranslateMultiLangModel(langCode: "ar", text: FawrySdk.LANGUAGE_ARABIC),
//         TranslateMultiLangModel(
//             langCode: "en", text: FawrySdk.LANGUAGE_ENGLISH),
//       ]));
// }
