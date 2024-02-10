// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:doctor/core/widgets/app_widgets/custom_button.dart';
// import 'package:doctor/core/widgets/rating_custom/rating_custom.dart';
// import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';

// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// class RateDialogWidget extends StatelessWidget {
//   const RateDialogWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       contentPadding: EdgeInsets.zero,
//       content: Container(
//         padding: EdgeInsets.symmetric(
//             horizontal: AppPadding.p32.w, vertical: AppPadding.p32.h),
//         decoration: shapeDecoration(
//           color: AppColor.white,
//           shape: roundedRectangleBorder(
//               borderRadius: BorderRadius.circular(AppSize.s4)),
//         ),
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(
//                   child: SvgPictureCustom(
//                 AppSvg.rateUs,
//                 width: AppSize.s58.r,
//                 height: AppSize.s58.r,
//               )),
//               SizedBox(height: AppSize.s8.h),
//               TextCustom(
//                   text: 'Rate Us!',
//                   textAlign: TextAlign.center,
//                   style: AppFontStyle.black16w600()),
//               SizedBox(height: AppSize.s8.h),
//               TextCustom(
//                   text: 'How Would you rate The App',
//                   textAlign: TextAlign.center,
//                   style: AppFontStyle.black14w400()),
//               SizedBox(height: AppSize.s16.h),
//               const RatingBarCustom(
//                 averageRating: "5.0",
//                 itemCount: 5,
//               ),
//               // RatingBar(
//               // initialRating: 4,
//               // direction: Axis.horizontal,
//               // allowHalfRating: true,
//               // itemCount: 5,
//               //   ratingWidget: RatingWidget(
//               //     full: SvgPictureCustom(AppSvg.fullStarRate,
//               //         width: AppSize.s24.landscapeFontR(),
//               //         height: AppSize.s24.landscapeFontR()),
//               //     half: SvgPictureCustom(AppSvg.starRate,
//               //         width: AppSize.s24.landscapeFontR(),
//               //         height: AppSize.s24.landscapeFontR()),
//               //     empty: SvgPictureCustom(AppSvg.starRate,
//               //         width: AppSize.s24.landscapeFontR(),
//               //         height: AppSize.s24.landscapeFontR()),
//               //   ),
//               //   itemPadding: EdgeInsets.symmetric(horizontal: AppPadding.p4.r),
//               //   onRatingUpdate: (rating) {
//               //     printf("$rating");
//               //   },
//               // ),
//               SizedBox(height: AppSize.s24.h),
//               CustomButton(
//                 label: 'Rate',
//                 function: () => Navigator.pop(context),
//               ),
//               SizedBox(height: AppSize.s8.h),
//               CustomButton(
//                 label: 'Skip Now',
//                 color: AppColor.white,
//                 flipColor: true,
//                 function: () => Navigator.pop(context),
//               ),
//             ]),
//       ),
//     );
//   }
// }
