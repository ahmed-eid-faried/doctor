// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/shimmer_custom/shimmer_custom.dart';

// class GridShimmer extends StatelessWidget {
//   final int? count;
//   const GridShimmer({
//     this.count = 8,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ShimmerCustom(
//         child: GridView.builder(
//       physics: const BouncingScrollPhysics(),
//       itemCount: count,
//       shrinkWrap: true,
//       itemBuilder: (BuildContext context, int index) => Container(
//         // width: double.infinity,
//         alignment: Alignment.center,
//         // margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),

//         decoration: boxDecoration(
//             borderRadius: BorderRadius.circular(4.0.r), color: AppColor.white2),
//       ),
//       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//           maxCrossAxisExtent: 100,
//           childAspectRatio: 1,
//           crossAxisSpacing: 4,
//           mainAxisSpacing: 4),
//     ));
//   }
// }
