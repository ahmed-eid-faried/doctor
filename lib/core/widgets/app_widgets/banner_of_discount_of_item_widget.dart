// import 'package:doctor/core/constant/color.dart';
// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:doctor/core/core/utils/values_manager.dart';
// import 'package:doctor/core/widgets/flip_direction.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BannerOfDiscountOfItemWidget extends StatelessWidget {
//   final String text;
//   final double height;
//   final double width;
//   final double? tlRadius;
//   final double? trRadius;
//   final double? brRadius;
//   final double? blRadius;
//   final Color? color;
//   final int index;
//   const BannerOfDiscountOfItemWidget(
//       {required this.text,
//       this.height = AppSize.s38,
//       this.width = AppSize.s65,
//       this.tlRadius = AppSize.s8,
//       this.trRadius = AppSize.s0,
//       this.blRadius = AppSize.s0,
//       this.brRadius = AppSize.s19,
//       this.color = AppColor.green,
//       super.key,
//       required this.index});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: AppSize.s38..sp,
//       width: AppSize.s65..sp,
//       padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 6.sp),
//       decoration: ShapeDecoration(
//         color: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomRight: Radius.circular(brRadius!),
//             topLeft: Radius.circular(tlRadius!),
//           ),
//         ),
//       ),
//       child: FittedBox(
//         child: FlipDirection(
//           child: TextCustom(text: text, style: AppFontStyle.white12w400()),
//         ),
//       ),
//     );
//   }
// }
