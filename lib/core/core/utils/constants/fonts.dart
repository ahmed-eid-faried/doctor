// import 'dart:ui';
// import 'package:doctoral_consumeral_consumer/core/utils/extensions/double_arabic_font_extension.dart';

// import '../../../core/imports/export_path.dart';

// class AppFontStyle {
//   static TextStyle fontStyle = TextStyle(
//     color: AppColor.grey,
//     fontSize: 12,
//     fontWeight: FontWeight.w400,
//     height: 0,
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//   );

//   static TextStyle grey12w400 = fontStyle.copyWith(
//     color: AppColor.grey,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle black12w400 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle black12w400smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );
//   static TextStyle black14w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle black14w600smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );
//   static TextStyle black14w500 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle black14w500smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );
//   static TextStyle black14w400 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle white14w400underline = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     decoration: TextDecoration.underline,
//     decorationColor: AppColor.white,
//   );
//   static TextStyle black14w400smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );
//   static TextStyle black12w500 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//     height: 0,
//     letterSpacing: 0.37,
//   );
//   static TextStyle white14w400 = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle white14w400smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );
//   static TextStyle black30w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 30.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle grey11w400 = fontStyle.copyWith(
//     color: AppColor.grey,
//     fontSize: 11.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle grey11w400lineThrough = fontStyle.copyWith(
//     color: AppColor.grey,
//     fontSize: 11.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     // fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//     decoration: TextDecoration.lineThrough,
//   );
//   static TextStyle black16w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 16.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle black12w600underline = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     decoration: TextDecoration.underline,
//   );
//   static TextStyle black12w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle red12w400 = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle red12w400underline = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     decoration: TextDecoration.underline,
//   );

//   static TextStyle black11w400 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 11.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle black16w400 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 16.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle black16w400smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 16.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle white12w400 = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle green12w500 = fontStyle.copyWith(
//     color: AppColor.green,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle green12w400 = fontStyle.copyWith(
//     color: AppColor.green,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle white18w600smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 18.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle white22w400smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 22.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle black18w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 18.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle grey14w400 = fontStyle.copyWith(
//     color: const Color(0xFF808080),
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//     height: 0,
//   );

//   static TextStyle black16w500 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 16.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle black28w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 28.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle white22w600smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 22.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle black22w600smcp = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 22.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle black40w600 = fontStyle.copyWith(
//     color: AppColor.black,
//     fontSize: 40.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle white14w500smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle red22w600smcp = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 22.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle white14w500 = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle white14w600 = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle white14w600smcp = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w600,
//     fontFeatures: const [FontFeature.enable('smcp')],
//   );

//   static TextStyle grey14w500 = fontStyle.copyWith(
//     color: AppColor.grey,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle white11w400 = fontStyle.copyWith(
//     color: AppColor.white,
//     fontSize: 11.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle red12w500 = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 12.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle red11w400 = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 11.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w400,
//   );

//   static var red12w500underline = fontStyle.copyWith(
//     color: AppColor.red,
//     fontSize: 14.0.ar(),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     fontWeight: FontWeight.w500,
//     decoration: TextDecoration.underline,
//   );
// }
