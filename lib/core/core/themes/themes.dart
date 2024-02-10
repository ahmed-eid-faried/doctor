// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:flutter/cupertino.dart';

// cupertinoThemes(BuildContext context) {
//   return CupertinoThemeData(
//     scaffoldBackgroundColor: AppColor.white,
//     primaryColor: AppColor.black,
//     primaryContrastingColor: AppColor.black,
//     textTheme: CupertinoTextThemeData(
//         textStyle: TextStyle(
//       fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//     )),
//   );
// }

// themes(BuildContext context) {
//   return ThemeData(
//     useMaterial3: true,
//     splashColor: Colors.transparent,
//     highlightColor: Colors.transparent,
//     hoverColor: Colors.transparent,
//     colorScheme: ColorScheme.fromSeed(
//         seedColor: AppColor.black, primary: AppColor.black),
//     scaffoldBackgroundColor: AppColor.white,
//     primaryColor: AppColor.black,
//     primarySwatch: createMaterialColor(AppColor.black),
//     fontFamily: Local.saveLang() ? "Somar" : "Montserrat",
//   );
// }

// MaterialColor createMaterialColor(Color color) {
//   List strengths = <double>[.05];
//   Map<int, Color> swatch = <int, Color>{};
//   final int r = color.red, g = color.green, b = color.blue;

//   for (int i = 1; i < 10; i++) {
//     strengths.add(0.1 * i);
//   }

//   for (var strength in strengths) {
//     final double ds = 0.5 - strength;
//     swatch[(strength * 1000).round()] = Color.fromRGBO(
//       r + ((ds < 0 ? r : (255 - r)) * ds).round(),
//       g + ((ds < 0 ? g : (255 - g)) * ds).round(),
//       b + ((ds < 0 ? b : (255 - b)) * ds).round(),
//       1,
//     );
//   }

//   return MaterialColor(color.value, swatch);
// }
