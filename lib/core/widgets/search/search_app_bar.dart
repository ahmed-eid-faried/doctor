// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/elevated_button/elevated_button_custom.dart';
// import 'package:doctor/core/widgets/icon_button/icon_button.dart';

// // ignore: depend_on_referenced_packages
// import 'package:provider/provider.dart';

// class SearchAppBar extends StatelessWidget {
//   const SearchAppBar({
//     super.key,
//     required this.titleSearch,
//   });
//   final String titleSearch;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//           top: AppPadding.p40.h,
//           left: AppPadding.p24.w,
//           right: AppPadding.p24.w),
//       child: Row(
//         children: [
//           IconButtonCustom(
//             boxFit: BoxFit.scaleDown,
//             onPressed: () => Go.popOrHome(context),
//             height: AppSize.s24,
//             width: AppSize.s24,
//             iconName: AppSvg.cancel,
//           ),
//           Expanded(
//             child: TextFormFieldCustom(
//               height: AppSize.s42.h,
//               marginState: false,
//               onChanged: (text) =>
//                   context.read<SearchDelegatePageCubit>().searchFun(text),
//               controller: context.read<SearchDelegatePageCubit>().controller,
//               hint: titleSearch,
//               padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
//               suffix: ElevatedButtonCustom(
//                 width: AppSize.s42.w,
//                 height: AppSize.s42.h,
//                 onPressed: () {
//                   CollectionProductsCubit.get(context).searchKey = context.read<SearchDelegatePageCubit>().controller?.text ?? '';
//                   CollectionProductsCubit.get(context).getSearchProducts();
//                   // Navigator.popAndPushNamed(context, Routes.searchResults);
//                 },
//                 widget: const SvgPictureCustom(
//                   AppSvg.whiteSearch,
//                 ),
//               ),
//               validate: (String? val) {
//                 return null;
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
