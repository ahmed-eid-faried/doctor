// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/shimmer_custom/shimmer_custom.dart';

// class ListShimmer extends StatelessWidget {
//   const ListShimmer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ShimmerCustom(
//         child: ListView.builder(
//       physics: const BouncingScrollPhysics(),
//       itemCount: 8,
//       shrinkWrap: true,
//       itemExtent: 80,
//       itemBuilder: (BuildContext context, int index) => Container(
//         // width: double.infinity,
//         margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
//         padding: EdgeInsets.symmetric(
//           horizontal: 16.w,
//           vertical: 0,
//         ),
//         decoration: boxDecoration(
//           borderRadius: BorderRadius.circular(16.0.r),
//           color: AppColor.white2,
//         ),
//       ),
//     ));
//   }
// }
