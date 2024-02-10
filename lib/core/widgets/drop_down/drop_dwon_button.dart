// import 'package:doctor/core/core/imports/export_path_packages.dart';
// import 'package:doctor/core/core/utils/constants/colors.dart';
// import 'package:doctor/core/core/utils/constants/svg.dart';
// import 'package:doctor/core/core/utils/style_manager.dart';
// import 'package:doctor/core/core/utils/values_manager.dart';
// import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';

// class CustomDropdownButton extends StatelessWidget {
//   const CustomDropdownButton({
//     required this.hint,
//     required this.value,
//     required this.dropdownItems,
//     required this.onChanged,
//     required this.onSave,
//     this.selectedItemBuilder,
//     this.hintAlignment,
//     this.valueAlignment,
//     this.buttonHeight,
//     this.buttonWidth,
//     this.buttonPadding,
//     this.buttonDecoration,
//     this.buttonElevation,
//     this.icon,
//     this.iconSize,
//     this.iconEnabledColor,
//     this.iconDisabledColor,
//     this.itemHeight,
//     this.itemPadding,
//     this.dropdownHeight,
//     this.dropdownWidth,
//     this.dropdownPadding,
//     this.dropdownDecoration,
//     this.dropdownElevation,
//     this.scrollbarRadius,
//     this.scrollbarThickness,
//     this.scrollbarAlwaysShow,
//     this.offset = Offset.zero,
//     super.key,
//   });

//   final String hint;
//   final String? value;
//   final List<DropdownMenuItem<String>>? dropdownItems;
//   final ValueChanged<String?>? onChanged;
//   final ValueChanged<String?>? onSave;
//   final DropdownButtonBuilder? selectedItemBuilder;
//   final Alignment? hintAlignment;
//   final Alignment? valueAlignment;
//   final double? buttonHeight, buttonWidth;
//   final EdgeInsetsGeometry? buttonPadding;
//   final BoxDecoration? buttonDecoration;
//   final int? buttonElevation;
//   final Widget? icon;
//   final double? iconSize;
//   final Color? iconEnabledColor;
//   final Color? iconDisabledColor;
//   final double? itemHeight;
//   final EdgeInsetsGeometry? itemPadding;
//   final double? dropdownHeight, dropdownWidth;
//   final EdgeInsetsGeometry? dropdownPadding;
//   final BoxDecoration? dropdownDecoration;
//   final int? dropdownElevation;
//   final Radius? scrollbarRadius;
//   final double? scrollbarThickness;
//   final bool? scrollbarAlwaysShow;
//   final Offset offset;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: dropdownHeight,
//       child: DropdownButtonFormField2<String>(
//         isExpanded: true,
//         decoration: InputDecoration(
//           hintStyle: AppFontStyle.grey14w400(),

//           fillColor: AppColor.white,
//           filled: true,
//           // Add Horizontal padding using menuItemStyleData.padding so it matches
//           // the menu padding when button's width is not specified.
//           contentPadding: const EdgeInsets.symmetric(
//               vertical: AppPadding.p6, horizontal: AppPadding.p6),
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColor.white2),
//             borderRadius: BorderRadius.circular(AppSize.s4.r),
//           ),

//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColor.red),
//             borderRadius: BorderRadius.circular(AppSize.s4.r),
//           ),

//           border: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColor.white2),
//             borderRadius: BorderRadius.circular(AppSize.s4.r),
//           ),
//           // Add more decoration..
//         ),
//         hint: TextCustom(
//           remoteState: true,
//           text: hint,
//           style: AppFontStyle.black14w400(),
//         ),
//         items: dropdownItems,
//         validator: (value) {
//           if (value == null) {
//             return '';
//           }
//           return null;
//         },
//         onChanged: (value) {
//           onChanged!(value);
//           //Do something when selected item is changed.
//         },
//         onSaved: (value) {
//           onSave!(value);
//         },
//         style: AppFontStyle.black14w400(),
//         buttonStyleData: ButtonStyleData(
//           decoration:
//               BoxDecoration(borderRadius: BorderRadius.circular(AppSize.s4)),
//           padding: const EdgeInsets.only(
//             right: AppPadding.p4,
//           ),
//         ),
//         iconStyleData: const IconStyleData(
//             icon: SvgPictureCustom(AppSvg.arrowleft,
//                 color: AppColor.black, width: AppSize.s14, height: AppSize.s8)),
//         dropdownStyleData: DropdownStyleData(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(AppSize.s4.r),
//           ),
//         ),
//         menuItemStyleData: const MenuItemStyleData(
//           padding: EdgeInsets.only(left: AppPadding.p8),
//         ),
//       ),
//     );
//   }
// }
