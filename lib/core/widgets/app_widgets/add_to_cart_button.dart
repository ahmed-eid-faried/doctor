// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/elevated_button/elevated_button_custom.dart';

// import '../../imports/export_path_packages.dart';
// import '../shimmer_custom/shimmer_custom.dart';

// class AddToCartButton extends StatelessWidget {
//   const AddToCartButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(AppPadding.p20.landscapeFontW()),
//       child: BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
//         switch (state) {
//           case GetProductLoadingState():
//             return ShimmerCustom(
//                 child: Container(
//               width: double.infinity,
//               height: AppSize.s46,
//               color: AppColor.grey3,
//             ));
//           case GetProductErrorState():
//             return SizedBox(
//               child: TextCustom(text: state.message),
//             );
//           case GetProductSuccessState():
//             return ElevatedButtonCustom(

  
//               onPressed: () {},
//               widget: Row(
//                 children: [
//                   TextCustom(
//                       text: LocaleKeys.addToCart,
//                       style: AppFontStyle.white14w400()),
//                   const Spacer(),
//                   TextCustom(text: '|', style: AppFontStyle.white14w400()),
//                   SizedBox(width: AppSize.s8.w),
//                   TextCustom(
//                       text:
//                           '${state.productEntity.data.dealPrice} ${LocaleKeys.lE.tr()}',
//                       style: AppFontStyle.white14w400())
//                 ],
//               ),
//             );
//           default:
//             return ShimmerCustom(
//                 child: Container(
//               width: double.infinity,
//               height: AppSize.s46,
//               color: AppColor.grey3,
//             ));
//         }
//       }),
//     );
//   }
// }
