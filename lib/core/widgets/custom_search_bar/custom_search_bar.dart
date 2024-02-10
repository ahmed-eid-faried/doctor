// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// class CustomSearchBar extends StatelessWidget {
//   const CustomSearchBar({
//     super.key,
//     this.sortState = false,
//     this.filterState = false,
//   });
//   final bool sortState;
//   final bool filterState;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: boxDecoration(
//           border: Border.symmetric(
//               horizontal:
//                   BorderSide(color: AppColor.white2, width: AppSize.s1.w))),
//       padding: const EdgeInsets.symmetric(
//           horizontal: AppPadding.p16, vertical: AppPadding.p8),
//       child: Row(
//         children: [
//           InkWell(
//               // onTap: () => Go.navigator(context, Routes.searchDelegatePage),
//               child: Container(
//             margin: const EdgeInsets.symmetric(vertical: AppPadding.p16),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SvgPictureCustom(AppSvg.search, width: 16.r, height: 16.r),
//                 const SizedBox(width: AppSize.s8),
//                 TextCustom(
//                   text: LocaleKeys.search,
//                   style: AppFontStyle.grey12w400(),
//                 ),
//               ],
//             ),
//           )),
//           const Spacer(),
//           InkWell(
//             onTap: () {
//               // showDialog(
//               //     context: context, builder: (context) => const SortingSheet());
//             },
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: AppPadding.p16),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextCustom(
//                     text: LocaleKeys.sort,
//                     style: AppFontStyle.grey12w400(),
//                   ),
//                   SizedBox(width: AppSize.s8.w),
//                   const SvgPictureCustom(AppSvg.arrowleft,
//                       width: AppSize.s14, height: AppSize.s8)
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: AppSize.s16.w),
//           InkWell(
//             onTap: () {
//               // Go.navigator(context, Routes.filterView);
//             },
//             child: Container(
//               margin: const EdgeInsets.symmetric(vertical: AppPadding.p16),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextCustom(
//                     text: LocaleKeys.filter,
//                     style: AppFontStyle.grey12w400(),
//                   ),
//                   const SizedBox(width: AppSize.s8),
//                   SvgPictureCustom(AppSvg.filter,
//                       width: AppSize.s16.r, height: AppSize.s16.r)
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: AppSize.s16.w),
//           // const SwitchListViewAndCardsWidget(),
//         ],
//       ),
//     );
//   }
// }
