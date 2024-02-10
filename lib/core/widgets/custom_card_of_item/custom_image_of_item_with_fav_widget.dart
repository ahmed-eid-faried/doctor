// import 'package:flutter/material.dart';
// import 'package:doctor/core/imports/export_path_packages.dart';
// import 'package:doctor/features/cart/domain/entities/compare_entity.dart';
// import '../../../features/products/presentation/controllers/select_filter_cubit/select_filter_cubit.dart';

// class CustomImageOfItemWithFavWidget extends StatelessWidget {
//   const CustomImageOfItemWithFavWidget({
//     super.key,
//     required this.index,
//     this.favState = false,
//     this.favStateVisibility = true,
//     this.width = AppSize.s100 * 1.83,
//     this.height = AppSize.s100 * 2.02,
//     this.offerState = false,
//     this.soldOutState = false,
//     this.compareState = false,
//     this.borderState = false,
//     this.discount,
//     this.image = '',
//     this.images = const [],
//     this.checkoutState = false,
//     required this.compareItem,
//   });

//   final int index;
//   final bool favState;
//   final bool soldOutState;
//   final bool offerState;
//   final bool compareState;
//   final bool borderState;
//   final bool favStateVisibility;
//   final double width;
//   final double height;

//   final bool checkoutState;
//   final String? image;
//   final List<String>? images;
//   final String? discount;
//   final CompareItem compareItem;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width..landscapeFontW(),
//       height: height..landscapeFontH2x(),
//       constraints: BoxConstraints(
//         minWidth: width.w,
//         minHeight: height.h,
//       ),
//       child: Stack(
//         children: [
//           images!.isNotEmpty
//               ? BlocBuilder<SelectFilterCubit, SelectFilterState>(
//                   builder: (context, selectState) {
//                   // var selectFilterCubit = SelectFilterCubit.get(context);
//                   return PageView.builder(
//                     itemCount: images!.length,
//                     itemBuilder: (context, index) => CustomImageOfItem(
//                         index: index,
//                         image: '${EndPoints.base}${images![index]}',
//                         height: height,
//                         width: width,
//                         borderRadius: borderState),
//                   );
//                 })
//               : CustomImageOfItem(
//                   index: index,
//                   image: image!,
//                   height: height,
//                   width: width,
//                   borderRadius: borderState),
//           if (!soldOutState && favStateVisibility)
//             Positioned(
//               bottom: 16,
//               right: 16,
//               child: CustomIconButtonWithOpacity(
//                 favState: favState,
//                 compareItem: compareItem,
//               ),
//             ),
//           if (discount != '0')
//             Positioned(
//               top: 0,
//               left: 0,
//               child: BannerOfDiscountOfItemWidget(
//                   text: '$discount% ${LocaleKeys.off.tr()}',
//                   tlRadius:
//                       index % AppSize.s2 == 0 ? AppSize.s8.r : AppSize.s0.r,
//                   blRadius:
//                       index % AppSize.s2 == 0 ? AppSize.s0.r : AppSize.s8.r,
//                   index: index),
//             ),
//           if (soldOutState)
//             FlipDirection(
//               child: Container(
//                 width: width.sp,
//                 height: height.sp,
//                 decoration: shapeDecoration(
//                   color: AppColor.grey3.withOpacity(0.67),
//                   shape: roundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                       topLeft: index % 2 == 0
//                           ? Radius.circular(AppSize.s8.r)
//                           : const Radius.circular(0),
//                       topRight: Radius.circular(AppSize.s8.r),
//                       bottomLeft: Radius.circular(AppSize.s8.r),
//                       bottomRight: index % 2 == 0
//                           ? const Radius.circular(0)
//                           : Radius.circular(AppSize.s8.r),
//                     ),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const SvgPictureCustom(AppSvg.sad),
//                     TextCustom(
//                         text: 'Sold Out !', style: AppFontStyle.white14w600()),
//                   ],
//                 ),
//               ),
//             ),
//           if (compareState)
//             FlipDirection(
//               child: Checkbox(
//                   value: offerState,
//                   onChanged: (x) {},
//                   fillColor: const MaterialStatePropertyAll(AppColor.white),
//                   checkColor: AppColor.black,
//                   side: const BorderSide(
//                       color: AppColor.black, width: AppSize.s1_5),
//                   splashRadius: AppSize.s5,
//                   shape: roundedRectangleBorder(
//                       side: const BorderSide(
//                           color: AppColor.black, width: AppSize.s1_5),
//                       borderRadius: BorderRadius.circular(AppSize.s5))),
//             )
//         ],
//       ),
//     );
//   }
// }
