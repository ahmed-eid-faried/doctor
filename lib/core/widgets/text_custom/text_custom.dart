// import 'package:doctor/core/utils/extensions/double_arabic_font_extension.dart';
// import 'package:easy_localization/easy_localization.dart' as lang;
// import 'package:flutter/material.dart';

// import '../../utils/constants/colors.dart';
// import '../../utils/font_manager.dart';

// class TextCustom extends StatelessWidget {
//   final String text;
//   final double? fontSize;

//   final double? letterSpacing;
//   final bool? softWrap;
//   final Color? color;

//   final Color? decorationColor;

//   final FontWeight? fontWeight;

//   final TextDecoration decoration;

//   final TextOverflow? overflow;
//   final int? maxLines;
//   final TextAlign textAlign;
//   final TextStyle? style;
//   final bool? arabic;
//   final TextWidthBasis? textWidthBasis;
//   final bool remoteState;

//   const TextCustom({
//     super.key,
//     required this.text,
//     this.fontSize = 12.0,
//     this.color = AppColor.black,
//     this.decorationColor = AppColor.black,
//     this.fontWeight = FontWeightManager.regular,
//     this.decoration = TextDecoration.none,
//     this.overflow,
//     this.style,
//     this.maxLines,
//     this.textWidthBasis = TextWidthBasis.parent,
//     this.softWrap = true,
//     this.letterSpacing = 0.0,
//     this.textAlign = TextAlign.start,
//     this.arabic = false,
//     this.remoteState = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       textDirection: context.locale.languageCode == 'ar'
//           ? TextDirection.rtl
//           : TextDirection.ltr,
//       remoteState ? text : text.tr(),
//       maxLines: maxLines,
//       overflow: overflow,
//       textAlign: textAlign,
//       softWrap: softWrap,
//       textWidthBasis: textWidthBasis,
//       style: style ??
//           Theme.of(context).textTheme.headlineMedium!.copyWith(
//                 fontSize: fontSize!.ar(),
//                 color: color,
//                 letterSpacing: letterSpacing,
//                 fontWeight: fontWeight,
//                 decoration: decoration,
//                 decorationColor: decorationColor,
//               ),
//     );
//   }
// }
