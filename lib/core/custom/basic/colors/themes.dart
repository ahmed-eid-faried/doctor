// import 'package:doctor/core/constant/colors/light_scheme.dart';
// import 'package:doctor/core/custom/basic/colors/dark_scheme.dart';
// import 'package:doctor/core/custom/basic/colors/light_scheme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class AppTheme {
//   changeTheme(BuildContext context) {
//     // Toggle between light and dark mode
//     var brightness = MediaQuery.of(context).platformBrightness;
//     if (brightness == Brightness.light) {
//       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
//     } else {
//       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
//     }
//   }

//   static ThemeData lightTheme() {
//     return ThemeData(
//       primaryColor: LColor.primary,
//       scaffoldBackgroundColor: LColor.background,
//       textTheme: const TextTheme(
//         bodyLarge: TextStyle(color: LColor.textForm),
//         bodyMedium: TextStyle(color: LColor.textForm),
//       ),
//       cardTheme: const CardTheme(
//         color: LColor.card,
//         shadowColor: LColor.shadow,
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//         fillColor: LColor.textBackground,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         hintStyle: const TextStyle(color: LColor.textFormIcon),
//       ),
//       iconTheme: const IconThemeData(
//         color: LColor.textFormIcon,
//       ),
//       appBarTheme: AppBarTheme(
//         backgroundColor: LColor.primary,
//         iconTheme: const IconThemeData(color: LColor.textForm),
//         toolbarTextStyle: const TextTheme(
//           titleLarge: TextStyle(
//             color: LColor.textForm,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ).bodyMedium,
//         titleTextStyle: const TextTheme(
//           titleLarge: TextStyle(
//             color: LColor.textForm,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ).titleLarge,
//       ),
//       colorScheme: ColorScheme(
//         background: LColor.background,
//         brightness: LColor.brightness,
//         error: LColor.error,
//         onBackground: LColor.background.withOpacity(0.5),
//         onError: LColor.error.withOpacity(0.5),
//         onPrimary: LColor.primary.withOpacity(0.5),
//         onSecondary: LColor.secondary.withOpacity(0.5),
//         primary: LColor.primary,
//         secondary: LColor.secondary,
//         surface: LColor.surface,
//         onSurface: LColor.surface.withOpacity(0.5), shadow: UIColors.shadow,

//         ////////////////////////////////////////////////////////////////////
//         secondaryContainer: UIColors.secondaryContainer,
//         onSecondaryContainer: UIColors.onSecondaryContainer,
//         tertiary: UIColors.tertiary,
//         onTertiary: UIColors.onTertiary,
//         tertiaryContainer: UIColors.tertiaryContainer,
//         onTertiaryContainer: UIColors.onTertiaryContainer,
//         errorContainer: UIColors.errorContainer,
//         onErrorContainer: UIColors.onErrorContainer,
//         surfaceVariant: UIColors.surfaceVariant,
//         onSurfaceVariant: UIColors.onSurfaceVariant,
//         outline: UIColors.outline,
//         outlineVariant: UIColors.outlineVariant,
//         scrim: UIColors.scrim,
//         inverseSurface: UIColors.inverseSurface,
//         onInverseSurface: UIColors.onInverseSurface,
//         inversePrimary: UIColors.inversePrimary,
//         surfaceTint: UIColors.surfaceTint,
//       ),
//     );
//   }

//   static ThemeData darkTheme() {
//     return ThemeData.dark().copyWith(
//       primaryColor: DColor.primary,
//       scaffoldBackgroundColor: DColor.background,
//       textTheme: const TextTheme(
//         bodyLarge: TextStyle(color: DColor.textForm),
//         bodyMedium: TextStyle(color: DColor.textForm),
//       ),
//       cardTheme: const CardTheme(
//         color: DColor.card,
//         shadowColor: DColor.shadow,
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//         fillColor: DColor.textBackground,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         hintStyle: const TextStyle(color: DColor.textFormIcon),
//       ),
//       iconTheme: const IconThemeData(
//         color: DColor.textFormIcon,
//       ),
//       appBarTheme: AppBarTheme(
//         backgroundColor: DColor.primary,
//         iconTheme: const IconThemeData(color: DColor.textForm),
//         toolbarTextStyle: const TextTheme(
//           titleLarge: TextStyle(
//             color: DColor.textForm,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ).bodyMedium,
//         titleTextStyle: const TextTheme(
//           titleLarge: TextStyle(
//             color: DColor.textForm,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ).titleLarge,
//       ),
//       colorScheme: ColorScheme(
//         background: DColor.background,
//         brightness: DColor.brightness,
//         error: DColor.error,
//         onBackground: DColor.background.withOpacity(0.5),
//         onError: DColor.error.withOpacity(0.5),
//         onPrimary: DColor.primary.withOpacity(0.5),
//         onSecondary: DColor.secondary.withOpacity(0.5),
//         primary: DColor.primary,
//         secondary: DColor.secondary,
//         surface: DColor.surface,
//         onSurface: DColor.surface.withOpacity(0.5),
//         shadow: DColor.shadow,

//         ////////////////////////////////////////////////////////////////////
//         secondaryContainer: DColor.secondaryContainer,
//         onSecondaryContainer: DColor.onSecondaryContainer,
//         tertiary: DColor.tertiary,
//         onTertiary: DColor.onTertiary,
//         tertiaryContainer: DColor.tertiaryContainer,
//         onTertiaryContainer: DColor.onTertiaryContainer,
//         errorContainer: DColor.errorContainer,
//         onErrorContainer: DColor.onErrorContainer,
//         surfaceVariant: DColor.surfaceVariant,
//         onSurfaceVariant: DColor.onSurfaceVariant,
//         outline: DColor.outline,
//         outlineVariant: DColor.outlineVariant,
//         scrim: DColor.scrim,
//         inverseSurface: DColor.inverseSurface,
//         onInverseSurface: DColor.onInverseSurface,
//         inversePrimary: DColor.inversePrimary,
//         surfaceTint: DColor.surfaceTint,
//       ),
//     );
//   }
// }
