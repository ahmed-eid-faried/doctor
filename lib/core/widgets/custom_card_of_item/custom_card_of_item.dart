// import 'package:flutter/material.dart';
// import 'package:doctor/core/imports/export_path_packages.dart';
// import 'package:doctor/core/widgets/app_widgets/custom_color_widget.dart';
// import 'package:doctor/core/widgets/custom_card_of_item/custom_image_of_item_with_fav_widget.dart';
// import 'package:doctor/core/widgets/flip_direction.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';
// import 'package:doctor/features/cart/domain/entities/compare_entity.dart';

// class CustomCardOfItem extends StatelessWidget {
//   const CustomCardOfItem({
//     super.key,
//     required this.index,
//     this.favState = false,
//     this.compareState = false,
//     this.checkoutState = false,
//     this.image = '',
//     required this.compareItem,
//   });
//   final int index;
//   final bool favState;
//   final bool compareState;
//   final bool checkoutState;
//   final String? image;
//   final CompareItem compareItem;

//   @override
//   Widget build(BuildContext context) {
//     return FlipDirection(
//       child: Container(
//         // width: double.infinity,
//         margin: EdgeInsets.all(AppMargin.m8.r),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomImageOfItemWithFavWidget(
//                 index: index,
//                 discount: '0',
//                 image: image,
//                 favState: favState,
//                 compareState: compareState,
//                 offerState: index % 2 == 0 ? true : false,
//                 compareItem: compareItem),
//             SizedBox(height: AppSize.s8.h),
//             FlipDirection(
//               child: SizedBox(
//                 // height: AppSize.s86.h,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Wrap(
//                         children: List.generate(
//                             3, (index) => const CustomColorWidget())),
//                     SizedBox(height: AppSize.s8.h),
//                     TextCustom(
//                         text: 'Buff sleeves Blouse',
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: AppFontStyle.black12w400()),
//                     SizedBox(height: AppSize.s4.h),
//                     FittedBox(
//                       child: Row(
//                         children: [
//                           if (index % 2 == 0)
//                             TextCustom(
//                                 text: '900 ${LocaleKeys.lE.tr()}',
//                                 style: AppFontStyle.grey11w400lineThrough()),
//                           SizedBox(width: AppSize.s4.w),
//                           TextCustom(
//                               text: '870 ${LocaleKeys.lE.tr()}',
//                               style: AppFontStyle.black14w600()),
//                         ],
//                       ),
//                     ),
//                     FittedBox(
//                       child: Row(
//                         children: [
//                           SvgPictureCustom(AppSvg.sliders,
//                               colorFilter: ColorFilter.mode(
//                                   compareState ? AppColor.red : AppColor.green,
//                                   BlendMode.srcIn),
//                               width: AppSize.s14.landscapeFontSp(),
//                               height: AppSize.s14.landscapeFontSp()),
//                           SizedBox(width: AppSize.s4.w),
//                           compareState
//                               ? TextCustom(
//                                   text: LocaleKeys.removeCompare,
//                                   style: AppFontStyle.red12w500())
//                               : TextCustom(
//                                   text: LocaleKeys.addToCompare,
//                                   style: AppFontStyle.green12w400()),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
