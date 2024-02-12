// import 'package:doctor/core/core/themes/decoration.dart';
// import 'package:doctor/core/constant/color.dart';
// import 'package:doctor/core/core/utils/values_manager.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';
// import 'package:flutter/material.dart';


// class TitleOfTabWidget extends StatelessWidget {
//   const TitleOfTabWidget({
//     super.key,
//     this.title,
//     required this.active,
//     this.onTap,
//     this.numOfTabsInWidget = 3,
//     this.titleWidget,
//   });
//   final String? title;
//   final Widget? titleWidget;
//   final bool active;
//   final int numOfTabsInWidget;
//   final void Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: (AppSize.s100 * 3.2).w / numOfTabsInWidget,
//         padding: EdgeInsets.symmetric(
//             horizontal: AppPadding.p4.w, vertical: AppPadding.p10.h),
//         decoration: shapeDecoration(
//           color: active ? AppColor.black : AppColor.white,
//           shape: roundedRectangleBorder(
//               borderRadius: BorderRadius.circular(AppSize.s4)),
//         ),
//         child: FittedBox(
//           child: titleWidget ??
//               Center(
//                 child: TextCustom(
//                     text: "$title",
//                     style: active
//                         ? AppFontStyle.white14w400()
//                         : AppFontStyle.black14w400()),
//               ),
//         ),
//       ),
//     );
//   }
// }
// // https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html
// // FractionallySizedBox
// // SizedBox.expand
// // Expanded
