// import 'package:flutter/material.dart';

// class MultiSelectChipColor extends StatefulWidget {
//   final List<ColorEntity> reportList;
//   final Function(List<int>)? onSelectionChanged;
//   final Function(List<int>)? onMaxSelected;
//   final int? maxSelection;

//   const MultiSelectChipColor(this.reportList,
//       {super.key,
//       this.onSelectionChanged,
//       this.onMaxSelected,
//       this.maxSelection});

//   @override
//   MultiSelectChipColorState createState() => MultiSelectChipColorState();
// }

// class MultiSelectChipColorState<T> extends State<MultiSelectChipColor> {
//   // String selectedChoice = "";
//   List<int> selectedChoices = [];

//   _buildChoiceList() {
//     List<Widget> choices = [];

//     for (var item in widget.reportList) {
//       choices.add(Container(
//         // decoration: BoxDecoration(
//         //   color: AppColor.white,
//         //   border: Border.all(color: selectedChoices.contains(item.id.toString()) ? AppColor.black:AppColor.grey),
//         //   borderRadius: BorderRadius.circular(AppSize.s4),
//         //
//         // ),
//         padding: const EdgeInsets.all(AppPadding.p4),
//         child: ChoiceChip(
//           backgroundColor: AppColor.white,
//           selectedColor: AppColor.white,
//           side: BorderSide(
//               width: 0.5,
//               color: selectedChoices.contains(item.id.toString())
//                   ? AppColor.black
//                   : AppColor.lightGrey),
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s4))),
//           color: MaterialStateProperty.all<Color?>(AppColor.white),
//           avatar: Container(
//             width: AppSize.s14.r,
//             height: AppSize.s14.r,
//             decoration: ShapeDecoration(
//               // 0xFF345DEE from api
//               color: Color(int.parse(
//                   item.code.length < 8 ? '0xFFFFFFFF' : "0xFF${item.code}")),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(AppSize.s2.r)),
//             ),
//           ),
//           label: TextCustom(
//             text: item.name,
//             style: selectedChoices.contains(item.id)
//                 ? AppFontStyle.black12w400()
//                 : AppFontStyle.lightGrey12w400(),
//           ),
//           selected: selectedChoices.contains(item.id),
//           onSelected: (selected) {
//             if (selectedChoices.length == (widget.maxSelection ?? -1) &&
//                 !selectedChoices.contains(item.id)) {
//               widget.onMaxSelected?.call(selectedChoices);
//             } else {
//               setState(() {
//                 selectedChoices.contains(item.id)
//                     ? selectedChoices.remove(item.id)
//                     : selectedChoices.add(item.id);
//                 widget.onSelectionChanged?.call(selectedChoices);
//               });
//             }
//             CollectionProductsCubit.get(context).getFiltersCount();
//           },
//         ),
//       ));
//     }

//     return choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: _buildChoiceList(),
//     );
//   }
// }

// //***********************************************************// \\******************************************************\\

// class MultiSelectChipName<T> extends StatefulWidget {
//   final List<T> reportList;
//   final Function(List<int>)? onSelectionChanged;
//   final Function(List<int>)? onMaxSelected;
//   final int? maxSelection;

//   const MultiSelectChipName(this.reportList,
//       {super.key,
//       this.onSelectionChanged,
//       this.onMaxSelected,
//       this.maxSelection});

//   @override
//   MultiSelectChipNameState createState() => MultiSelectChipNameState();
// }

// class MultiSelectChipNameState extends State<MultiSelectChipName> {
//   // String selectedChoice = "";
//   List<int> selectedChoices = [];

//   _buildChoiceList() {
//     List<Widget> choices = [];

//     for (var item in widget.reportList) {
//       choices.add(Container(
//         // decoration: BoxDecoration(
//         //   color: AppColor.white,
//         //   border: Border.all(color: selectedChoices.contains(item.id.toString()) ? AppColor.black:AppColor.grey),
//         //   borderRadius: BorderRadius.circular(AppSize.s4),
//         //
//         // ),
//         padding: const EdgeInsets.all(AppPadding.p4),
//         child: ChoiceChip(
//           backgroundColor: AppColor.white,
//           selectedColor: AppColor.white,
//           side: BorderSide(
//               width: 0.5,
//               color: selectedChoices.contains(item.id)
//                   ? AppColor.black
//                   : AppColor.lightGrey),
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s4))),
//           color: MaterialStateProperty.all<Color?>(AppColor.white),
//           label: TextCustom(
//             text: item.name,
//             style: selectedChoices.contains(item.id)
//                 ? AppFontStyle.black12w400()
//                 : AppFontStyle.lightGrey12w400(),
//           ),
//           selected: selectedChoices.contains(item.id),
//           onSelected: (selected) {
//             if (selectedChoices.length == (widget.maxSelection ?? -1) &&
//                 !selectedChoices.contains(item.id)) {
//               widget.onMaxSelected?.call(selectedChoices);
//             } else {
//               setState(() {
//                 selectedChoices.contains(item.id)
//                     ? selectedChoices.remove(item.id)
//                     : selectedChoices.add(item.id);
//                 widget.onSelectionChanged?.call(selectedChoices);
//               });
//             }
//             CollectionProductsCubit.get(context).getFiltersCount();
//           },
//         ),
//       ));
//     }

//     return choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: _buildChoiceList(),
//     );
//   }
// }

// //***********************************************************// \\******************************************************\\

// class MultiSelectChipString extends StatefulWidget {
//   final List<String> reportList;
//   final Function(List<String>)? onSelectionChanged;
//   final Function(List<String>)? onMaxSelected;
//   final int? maxSelection;

//   const MultiSelectChipString(this.reportList,
//       {super.key,
//       this.onSelectionChanged,
//       this.onMaxSelected,
//       this.maxSelection});

//   @override
//   MultiSelectChipStringState createState() => MultiSelectChipStringState();
// }

// class MultiSelectChipStringState extends State<MultiSelectChipString> {
//   // String selectedChoice = "";
//   List<String> selectedChoices = [];

//   _buildChoiceList() {
//     List<Widget> choices = [];

//     for (var item in widget.reportList) {
//       choices.add(Container(
//         // decoration: BoxDecoration(
//         //   color: AppColor.white,
//         //   border: Border.all(color: selectedChoices.contains(item.id.toString()) ? AppColor.black:AppColor.grey),
//         //   borderRadius: BorderRadius.circular(AppSize.s4),
//         //
//         // ),
//         padding: const EdgeInsets.all(AppPadding.p4),
//         child: ChoiceChip(
//           backgroundColor: AppColor.white,
//           selectedColor: AppColor.white,
//           side: BorderSide(
//               width: 0.5,
//               color: selectedChoices.contains(item)
//                   ? AppColor.black
//                   : AppColor.lightGrey),
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s4))),
//           color: MaterialStateProperty.all<Color?>(AppColor.white),
//           label: TextCustom(
//             text: item,
//             style: selectedChoices.contains(item)
//                 ? AppFontStyle.black12w400()
//                 : AppFontStyle.lightGrey12w400(),
//           ),
//           selected: selectedChoices.contains(item),
//           onSelected: (selected) {
//             if (selectedChoices.length == (widget.maxSelection ?? -1) &&
//                 !selectedChoices.contains(item)) {
//               widget.onMaxSelected?.call(selectedChoices);
//             } else {
//               setState(() {
//                 selectedChoices.contains(item)
//                     ? selectedChoices.remove(item)
//                     : selectedChoices.add(item);
//                 widget.onSelectionChanged?.call(selectedChoices);
//               });
//               CollectionProductsCubit.get(context).getFiltersCount();
//             }
//           },
//         ),
//       ));
//     }

//     return choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: _buildChoiceList(),
//     );
//   }
// }
