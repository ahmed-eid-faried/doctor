// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// import '../../imports/export_path.dart';
// import '../../imports/export_path_packages.dart';

// class ItemOfSearchHistory extends StatelessWidget {
//   const ItemOfSearchHistory({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: AppSize.s100,
//       child: GridView.builder(
//         shrinkWrap: false,
//         physics: const ClampingScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: getValueForScreenType<int>(
//             context: context,
//             mobile: 3,
//             tablet: 4,
//             desktop: 6,
//           ),
//           childAspectRatio: 3,
//         ),
//         itemBuilder: (context, index) => Container(
//           margin:
//               EdgeInsets.only(right: AppMargin.m8.w, bottom: AppMargin.m8.h),
//           // padding: EdgeInsets.symmetric(
//           //     horizontal: AppPadding.p8.w, vertical: AppPadding.p4.h),
//           decoration: shapeDecoration(
//             color: AppColor.white2,
//             shape: roundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(AppSize.s4.r)),
//           ),
//           child: Center(
//             child: TextCustom(
//                 text: LocaleKeys.blueSkirt, style: AppFontStyle.grey12w400()),
//           ),
//         ),
//         itemCount: 5,
//       ),
//     );
//   }
// }
