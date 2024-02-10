// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:doctor/core/widgets/elevated_button/elevated_button_custom.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';


// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     super.key,
//     required this.label,
//     this.function,
//     this.color = Colors.black,
//     this.borderColor,
//     this.flipColor = false,
//     this.leading,
//     this.verticalPadding = AppPadding.p14,
//     this.spacerRowBetweenLabelAndLeading = false,
//   });
//   final String label;
//   final void Function()? function;
//   final Color color;
//   final Color? borderColor;
//   final bool flipColor;
//   final bool spacerRowBetweenLabelAndLeading;
//   final Widget? leading;
//   final double verticalPadding;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButtonCustom(
//       onPressed: function,
//       width: (AppSize.s100 * 3.41).w,
//       colors: color,
//       borderColor: borderColor ?? color,
//       widget: SizedBox(
//         width: (AppSize.s100 * 3.41).w,
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             if (spacerRowBetweenLabelAndLeading) SizedBox(width: AppSize.s16.w),
//             if (leading != null) FittedBox(child: leading!),
//             if (leading != null) SizedBox(width: AppSize.s8.w),
//             if (spacerRowBetweenLabelAndLeading) const Spacer(),
//             TextCustom(
//                 text: label,
//                 maxLines: 1,
//                 style: flipColor
//                     ? AppFontStyle.black14w400()
//                     : AppFontStyle.white14w400()),
//             if (spacerRowBetweenLabelAndLeading) SizedBox(width: AppSize.s16.w),
//           ],
//         ),
//       ),
//     );
//   }
// }
