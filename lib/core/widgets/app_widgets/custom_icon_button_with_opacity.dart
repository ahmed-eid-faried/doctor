// import 'package:flutter/material.dart';
// import 'package:doctor/core/imports/export_path_packages.dart';
// import 'package:doctor/features/cart/domain/entities/compare_entity.dart'
//     as compare_entity;
// import 'package:doctor/features/cart/domain/entities/compare_entity.dart';
// import 'package:doctor/features/favorite/presentation/controller/saved_items/saveditems_cubit.dart';

// class CustomIconButtonWithOpacity extends StatelessWidget {
//   const CustomIconButtonWithOpacity({
//     super.key,
//     this.svgImage,
//     this.onTap,
//     this.color,
//     this.favState = false,
//     this.height = AppSize.s24,
//     this.width = AppSize.s24,
//     this.opacity = true,
//     required this.compareItem,
//   });
//   final String? svgImage;
//   final Color? color;
//   final void Function()? onTap;
//   final bool favState;
//   final double height;
//   final double width;
//   final bool opacity;
//   final CompareItem compareItem;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap ??
//           () async {
//             // await BlocProvider.of<SavedItemsCubit>(context)
//             //         .getSavedItemState(compareItem.id.toString())
//             favState
//                 ? await BlocProvider.of<SavedItemsCubit>(context)
//                     .removeFromSavedItems(compareItem.id.toString())
//                     .then((value) async =>
//                         await BlocProvider.of<SavedItemsCubit>(context)
//                             .getSavedItems())
//                 : await BlocProvider.of<SavedItemsCubit>(context)
//                     .addToSavedItems(compare_entity.CompareItem(
//                     id: compareItem.id,
//                     name: compareItem.name,
//                     imagePath: compareItem.imagePath,
//                     price: compareItem.price,
//                     savedItems: favState,
//                     selected: true,
//                     dealPrice: compareItem.dealPrice,
//                     items: compareItem.items,
//                   ));
//           },
//       child: Opacity(
//         opacity: opacity ? 0.80 : 1,
//         child: Container(
//           width: AppSize.s32.landscapeFontR(),
//           height: AppSize.s32.landscapeFontR(),
//           decoration: shapeDecoration(
//             color: AppColor.white,
//             shape: const OvalBorder(),
//           ),
//           child: FlipDirection(
//             child: Center(
//                 child: (svgImage != null)
//                     ? SvgPictureCustom(svgImage!,
//                         color: color,
//                         height: height.landscapeFontR(),
//                         width: width.landscapeFontR())
//                     : favState
//                         ? SvgPictureCustom(AppSvg.favheart,
//                             height: height.landscapeFontR(),
//                             width: width.landscapeFontR())
//                         : SvgPictureCustom(AppSvg.heart,
//                             height: height.landscapeFontR(),
//                             width: width.landscapeFontR())),
//           ),
//         ),
//       ),
//     );
//   }
// }
