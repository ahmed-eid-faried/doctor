// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/shimmer_custom/shimmer_custom.dart';
// import 'package:jiffy/jiffy.dart';
// import 'package:slide_countdown/slide_countdown.dart';

// import '../imports/export_path_packages.dart';

// const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 5);

// class KSlideCountdown extends StatelessWidget {
//   const KSlideCountdown({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // var defaultDuration = timer();
//     Jiffy.setLocale('en_us');
//     return BlocBuilder<FlashSaleCubit, FlashSaleState>(
//         builder: (context, state) {
//       var cubit = FlashSaleCubit.get(context);
//       return state is GetFlashProductsSuccessState
//           ? SlideCountdown(
//               decoration: const BoxDecoration(color: AppColor.red),
//               style: AppFontStyle.white12w400(),
//               duration: cubit.timer(
//                   input: (state.flashProductsEntity.data.endDate.split('.')[0])
//                       .toString()),
//             )
//           : state is GetFlashProductsErrorState
//               ? SizedBox(
//                   child: TextCustom(
//                   text: '00:00:00',
//                   style: AppFontStyle.white12w400(),
//                 ))
//               : ShimmerCustom(
//                   child: TextCustom(
//                   text: '00:00:00',
//                   style: AppFontStyle.white12w400(),
//                 ));
//     });
//   }
// }
