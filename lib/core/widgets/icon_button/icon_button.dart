// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/flip_direction.dart';

// class IconButtonCustom extends StatelessWidget {
//   final String iconName;
//   final void Function()? onPressed;
//   final Color? color;
//   final Color? btnColor;
//   final bool? isFlip;
//   final double height;
//   final double width;
//   final BoxFit? boxFit;

//   const IconButtonCustom({
//     super.key,
//     required this.iconName,
//     required this.onPressed,
//     this.isFlip = false,
//     this.boxFit = BoxFit.contain,
//     this.height = AppSize.s24,
//     this.width = AppSize.s24,
//     this.color = AppColor.black,
//     this.btnColor = Colors.white,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       iconSize: height,
//       onPressed: onPressed,
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all<Color>(btnColor!),
//         animationDuration: const Duration(milliseconds: 300),
//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           roundedRectangleBorder(
//             borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30)),
//           ),
//         ),
//       ),
//       color: btnColor,
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       hoverColor: Colors.transparent,
//       icon: isFlip!
//           ? Transform.flip(
//               flipX: isFlip!,
//               child: FlipDirection(
//                 child: SvgPictureCustom(
//                   height: height,
//                   width: width,
//                   iconName,
//                   color: color,
//                 ),
//               ),
//             )
//           : SvgPictureCustom(
//               height: height,
//               width: width,
//               iconName,
//               boxFit: boxFit,
//               // color: color,
//             ),
//     );
//   }
// }
