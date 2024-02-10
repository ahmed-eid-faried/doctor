// import 'package:flutter/material.dart';
// import 'package:doctor/core/imports/export_path_packages.dart';
// import 'package:doctor/core/utils/values_manager.dart';
//
// class DropdownWidget extends StatefulWidget {
//   const DropdownWidget({
//     super.key,
//     required this.title,
//     this.dropDownOptions = const [],
//     required this.dropdownValue,
//     this.flag = false,
//   });
//   final String title;
//   final String dropdownValue;
//   final List<String>? dropDownOptions;
//   final bool flag;
//
//   @override
//   State<DropdownWidget> createState() => _DropdownWidgetState();
// }
//
// class _DropdownWidgetState extends State<DropdownWidget> {
//   late String _dropdownValue;
//
//   loadingOfCountries() {
//
//     _dropdownValue = widget.dropdownValue;
//   }
//
//   @override
//   void initState() {
//     widget.dropDownOptions == null || widget.dropDownOptions == []
//         ? loadingOfCountries()
//         : null;
//     _dropdownValue = widget.dropdownValue;
//     super.initState();
//   }
//
//   void dropdownCallback(String? selectedValue) {
//     if (selectedValue is String) {
//       setState(() {
//         _dropdownValue = selectedValue;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: ShapeDecoration(
//         color: AppColor.white,
//         shape: RoundedRectangleBorder(
//           side: const BorderSide(width: AppSize.s1, color: AppColor.white2),
//           borderRadius: BorderRadius.circular(AppSize.s4),
//         ),
//       ),
//       child: (widget.flag)
//           ? DropdownButton(
//           hint: TextCustom(text: widget.title),
//           disabledHint: TextCustom(text: widget.title),
//           isExpanded: true,
//           underline: const TextCustom(text: ""),
//           alignment: Alignment.center,
//           icon: FlipDirection(
//             child: SvgPicture.asset(
//               AppSvg.arrowleft,
//               width: AppSize.s24.landscapeFontSp(),
//               height: AppSize.s24.landscapeFontSp(),
//             ),
//           ),
//           padding: EdgeInsets.symmetric(
//               vertical: 0,
//               //  (!widget.flag)
//               //     ? 0
//               //     : (widget.title != "")
//               //         ? 0
//               //         : 8.0.landscapeFontH(),
//               horizontal: 8.0.landscapeFontW()),
//           borderRadius: BorderRadius.all(Radius.circular(4.r)),
//           items: widget.dropDownOptions!
//               .map<DropdownMenuItem<String>>((String mascot) {
//             return DropdownMenuItem<String>(
//                 value: mascot,
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     if (!widget.flag)
//                       TextCustom(
//                           text: mascot.toTitleCase(),
//                           style: AppFontStyle.black14w400()()),
//                     if (widget.flag)
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius:
//                             BorderRadius.circular(AppSize.s100 * 3)),
//                         child: CountryFlag(
//                           country: Country.fromCode(mascot),
//                           height: AppSize.s32.sp,
//                         ),
//                       ),
//                     if (widget.flag) SizedBox(width: AppSize.s2.w),
//                     if (widget.flag)
//                       SizedBox(
//                         // width: 30.w,
//                         child: FittedBox(
//                           child: TextCustom(
//                               text: countryData
//                                   .firstWhere((element) =>
//                               element['code']!.toLowerCase() ==
//                                   mascot)['dial_code']
//                                   .toString(),
//                               style: AppFontStyle.black14w400()()),
//                         ),
//                       ),
//                   ],
//                 ));
//           }).toList(),
//           value: _dropdownValue,
//           onChanged: dropdownCallback,
//           style: AppFontStyle.black14w400())
//           : Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 if (widget.title != "")
//                   Padding(
//                     padding: EdgeInsets.only(
//                         // top: 8.0.landscapeFontH(),
//                         left: AppSize.s8.landscapeFontW(),
//                         right: AppSize.s8.landscapeFontW()),
//                     child: FittedBox(
//                       child: TextCustom(
//                           text: widget.title.toString(),
//                           style: AppFontStyle.grey12w400()),
//                     ),
//                   ),
//                 DropdownButton(
//                     hint: TextCustom(text: widget.title),
//                     disabledHint: TextCustom(text: widget.title),
//                     isExpanded: true,
//                     underline: const TextCustom(text: ""),
//                     alignment: Alignment.center,
//                     icon: FlipDirection(
//                       child: SvgPicture.asset(
//                         AppSvg.arrowleft,
//                         width: AppSize.s24.landscapeFontSp(),
//                         height: AppSize.s24.landscapeFontSp(),
//                       ),
//                     ),
//                     padding: EdgeInsets.symmetric(
//                         vertical: 0,
//                         //  (!widget.flag)
//                         //     ? 0
//                         //     : (widget.title != "")
//                         //         ? 0
//                         //         : 8.0.landscapeFontH(),
//                         horizontal: 8.0.landscapeFontW()),
//                     borderRadius: BorderRadius.all(Radius.circular(4.r)),
//                     items: widget.dropDownOptions!
//                         .map<DropdownMenuItem<String>>((String mascot) {
//                       return DropdownMenuItem<String>(
//                           value: mascot,
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               if (!widget.flag)
//                                 TextCustom(
//                                     text: mascot.toTitleCase(),
//                                     style: AppFontStyle.black14w400()),
//                               if (widget.flag)
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius:
//                                       BorderRadius.circular(AppSize.s100 * 3)),
//                                   child: CountryFlag(
//                                     country: Country.fromCode(mascot),
//                                     height: AppSize.s32.sp,
//                                   ),
//                                 ),
//                               if (widget.flag) SizedBox(width: AppSize.s2.w),
//                               if (widget.flag)
//                                 SizedBox(
//                                   // width: 30.w,
//                                   child: FittedBox(
//                                     child: TextCustom(
//                                         text: countryData
//                                             .firstWhere((element) =>
//                                         element['code']!.toLowerCase() ==
//                                             mascot)['dial_code']
//                                             .toString(),
//                                         style: AppFontStyle.black14w400()),
//                                   ),
//                                 ),
//                             ],
//                           ));
//                     }).toList(),
//                     value: _dropdownValue,
//                     onChanged: dropdownCallback,
//                     style: AppFontStyle.black14w400())
//               ],
//             ),
//     );
//   }
// }
