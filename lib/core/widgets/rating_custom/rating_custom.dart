// import 'package:doctor/core/core/utils/constants/colors.dart';
// import 'package:doctor/core/core/utils/constants_manager.dart';
// import 'package:doctor/core/core/utils/font_manager.dart';
// import 'package:doctor/core/core/utils/style_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';
// import 'package:flutter_svg/flutter_svg.dart';
 

// class RatingBarCustom extends StatelessWidget {
//   final int itemCount;
//   final bool enable;
//   final String averageRating;
//   final bool showText;
//   final double itemSize;
//   final double minRate;
//   final FontWeight fontWeight;
//   final double fontSize;
//   final Color color;
//   final Function(double rate)? currentRate;
//   final MainAxisAlignment mainAxisAlignment;
//   final Color unratedColor;
//   const RatingBarCustom(
//       {required this.itemCount,
//       required this.averageRating,
//       this.enable = false,
//       this.showText = true,
//       this.itemSize = 24,
//       this.minRate = 0.5,
//       this.fontSize = FontSize.s16,
//       this.fontWeight = FontWeight.bold,
//       this.currentRate,
//       this.color = AppColor.black,
//       super.key,
//       this.mainAxisAlignment = MainAxisAlignment.start,
//       this.unratedColor = const Color(0xffECEFF1)});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: mainAxisAlignment,
//       children: [
//         if (showText)
//           TextCustom(
//             arabic: AppConstants.language,
//             text: averageRating,
//             style: AppFontStyle.black16w600().copyWith(
//               color: color,
//               fontSize: fontSize,
//               fontWeight: fontWeight,
//               height: 0,
//             ),
//           ),
//         if (showText) const RSizedBox.horizontal(AppSize.s8),
//         RatingBar.builder(
//           minRating: minRate,
//           ignoreGestures: !enable,
//           itemSize: itemSize,
//           initialRating: double.parse(averageRating),
//           direction: Axis.horizontal,
//           allowHalfRating: true,
//           itemCount: itemCount,
//           itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
//           unratedColor: unratedColor,
//           itemBuilder: (context, _) => SvgPicture.asset(AppSvg.star),
//           onRatingUpdate: (rating) {
//             // printf(rating);
//             currentRate == null ? null : currentRate!(rating);
//           },
//         ),
//       ],
//     );
//   }
// }
