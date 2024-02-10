// import 'package:flutter/material.dart';

// class TabBarCustom extends StatelessWidget {
//   final List<Widget> widgets;
//   final List<Tab> myTabs;
//   final Function(int index)? onTap;
//   final dynamic radius;
//   final TabController? tabController;
//   final int? initIndex;
//   final Widget? bannerChild;
//   const TabBarCustom(
//       {required this.myTabs,
//       required this.widgets,
//       this.tabController,
//       this.initIndex = 0,
//       this.onTap,
//       this.radius = AppSize.s4,
//       super.key,
//       this.bannerChild});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: DefaultTabController(
//         animationDuration: const Duration(milliseconds: 500),
//         length: myTabs.length,
//         initialIndex: initIndex!,
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.zero,
//               padding: const EdgeInsets.all(AppPadding.p4),
//               height: AppSize.s48.h,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(double.parse('$radius')),
//                   color: AppColor.white,
//                   border: Border.all(color: AppColor.white2)),
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               child: TabBar(
//                 padding: EdgeInsets.zero,
//                 controller: tabController,
//                 physics: const BouncingScrollPhysics(),
//                 tabAlignment: TabAlignment.center,
//                 onTap: (int index) {
//                   onTap == null ? null : onTap!(index);
//                 },
//                 tabs: myTabs,
//                 labelStyle: AppFontStyle.black14w400(),
//                 enableFeedback: true,
//                 labelColor: AppColor.white,
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 isScrollable: true,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(double.parse('$radius')),
//                   color: AppColor.black,
//                 ),
//                 dividerColor: AppColor.white,
//                 unselectedLabelColor: AppColor.black,
//               ),
//             ),
//             if (bannerChild != null) bannerChild!,
//             Expanded(
//               child: TabBarView(
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: widgets,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
