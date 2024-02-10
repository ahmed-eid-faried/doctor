// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// class SelectWidgetCustom<T> extends StatelessWidget {
//   final T value;
//   final T groupValue;
//   final String? name;
//   final double? radius;
//   final double? width;
//   final Color? selectedColor;
//   final Color? disabledColor;
//   final int index;
//   final Widget? widget;
//   final EdgeInsetsGeometry? padding;
//   final ValueChanged<T?> onChanged;

//   const SelectWidgetCustom({
//     super.key,
//     required this.value,
//     required this.groupValue,
//     required this.onChanged,
//     required this.index,
//     this.radius = AppSize.s4,
//     this.selectedColor = AppColor.black,
//     this.disabledColor = AppColor.white2,
//     this.name,
//     this.width,
//     this.widget,
//     this.padding,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final isSelected = value == groupValue;

//     return AnimatedContainer(
//       // width: width!,

//       margin: EdgeInsets.only(left: AppMargin.m8.r, top: AppMargin.m8.r),
//       padding: padding ??
//           EdgeInsets.symmetric(
//               horizontal: AppPadding.p8.r, vertical: AppPadding.p4.r),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: AppColor.white,
//         border: Border.all(color: isSelected ? selectedColor! : disabledColor!),
//         borderRadius: BorderRadius.circular(radius!),

//         // shadows: const [
//         //   BoxShadow(
//         //     color: Color(0x0C000000),
//         //     blurRadius: AppSize.s4,
//         //     offset: Offset(AppSize.s0, AppSize.s4),
//         //     spreadRadius: AppSize.s0,
//         //   )
//         // ],
//       ),
//       duration: const Duration(milliseconds: 300),
//       child: InkWell(
//         onTap: () => onChanged(value),
//         child: widget ??
//             TextCustom(
//               text: name!,
//               // fontSize: FontSize.s16,
//               //
//               // fontWeight: FontWeightManager.bold,
//               style: selectedColor != null ? AppFontStyle.black12w400() : null,
//             ),
//       ),
//     );
//   }
// }

// class SelectWidgetSortCustom<T> extends StatelessWidget {
//   final T value;
//   final T groupValue;
//   final String? name;
//   final double? radius;
//   final double? width;
//   final Color? selectedColor;
//   final Color? disabledColor;
//   final int index;
//   final Widget? widget;
//   final EdgeInsetsGeometry? padding;
//   final ValueChanged<T?> onChanged;

//   const SelectWidgetSortCustom({
//     super.key,
//     required this.value,
//     required this.groupValue,
//     required this.onChanged,
//     required this.index,
//     this.radius = AppSize.s4,
//     this.selectedColor = AppColor.black,
//     this.disabledColor = AppColor.white2,
//     this.name,
//     this.width,
//     this.widget,
//     this.padding,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final isSelected = value == groupValue;

//     return AnimatedContainer(
//       // width: width!,

//       // margin: EdgeInsets.only(left: AppMargin.m8.r, top: AppMargin.m8.r),
//       padding: padding ??
//           EdgeInsets.symmetric(
//               horizontal: AppPadding.p8.r, vertical: AppPadding.p16.r),
//       alignment: Alignment.center,
//       // decoration: BoxDecoration(
//       //   color: AppColor.white,
//       //   border: Border.all(color: isSelected ? selectedColor! : disabledColor!),
//       //   borderRadius: BorderRadius.circular(radius!),

//       // shadows: const [
//       //   BoxShadow(
//       //     color: Color(0x0C000000),
//       //     blurRadius: AppSize.s4,
//       //     offset: Offset(AppSize.s0, AppSize.s4),
//       //     spreadRadius: AppSize.s0,
//       //   )
//       // ],
//       // ),
//       duration: const Duration(milliseconds: 300),
//       child: InkWell(
//           onTap: () => onChanged(value),
//           child: Row(
//             children: [
//               TextCustom(
//                   text: name!.toTitleCase(), style: AppFontStyle.black14w400()),
//               const Spacer(),
//               Visibility(
//                   visible: isSelected,
//                   child: const SvgPictureCustom(AppSvg.correct)),
//             ],
//           )
//           // ??
//           // TextCustom(
//           //   text: name!,
//           //   // fontSize: FontSize.s16,
//           //   //
//           //   // fontWeight: FontWeightManager.bold,
//           //   style: selectedColor != null ? AppFontStyle.black12w400() : null,
//           // ),
//           ),
//     );
//   }
// }
