// import 'package:doctor/core/core/utils/constants/colors.dart';
// import 'package:doctor/core/core/utils/style_manager.dart';
// import 'package:doctor/core/core/utils/values_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// class ElevatedButtonCustom extends StatelessWidget {
//   final String? text;
//   final void Function()? onPressed;
//   final double? radius;
//   final double? width;
//   final double? height;
//   final double? vPadding;
//   final double? hPadding;
//   final double? elevation;
//   final Color colors;
//   final Color? textColor;
//   final double? fontSize;
//   final Widget? widget;
//   final Color? borderColor;
//   final FontWeight? fontWeight;
//   final TextStyle? textStyle;

//   const ElevatedButtonCustom({
//     super.key,
//     this.text,
//     this.onPressed,
//     this.radius = AppSize.s4,
//     this.width = double.infinity,
//     this.height = AppSize.s46,
//     this.vPadding = AppSize.s4,
//     this.hPadding = AppSize.s12,
//     this.elevation = AppSize.s0,
//     this.colors = Colors.black,
//     this.fontSize = AppSize.s14,
//     this.textColor = AppColor.white,
//     this.widget,
//     this.borderColor,
//     this.textStyle,
//     this.fontWeight,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(radius!),
//             side: BorderSide(color: borderColor ?? AppColor.black),
//           ),
//           backgroundColor: colors,
//           elevation: elevation,
//           minimumSize: Size(width!, height!),
//           padding:
//               EdgeInsets.symmetric(horizontal: hPadding!, vertical: vPadding!),
//           textStyle: Theme.of(context)
//               .textTheme
//               .headlineLarge!
//               .copyWith(color: textColor)),
//       child: widget ??
//           TextCustom(
//               text: text!,
//               color: textColor,
//               fontSize: fontSize,
//               fontWeight: fontWeight,
//               style: textStyle ?? AppFontStyle.white14w400(),
//               textAlign: TextAlign.center),
//     );
//   }
// }
