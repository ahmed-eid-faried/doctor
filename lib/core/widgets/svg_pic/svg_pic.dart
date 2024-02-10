// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SvgPictureCustom extends StatelessWidget {
//   final String assetsName;
//   final double? height;
//   final double? width;
//   final Color? color;
//   final BoxFit? boxFit;
//   final ColorFilter? colorFilter;
//   final Alignment alignment;
//   const SvgPictureCustom(
//     this.assetsName, {
//     super.key,
//     this.height = AppSize.s24,
//     this.width = AppSize.s24,
//     this.color,
//     this.boxFit = BoxFit.contain,
//     this.colorFilter,
//     this.alignment = Alignment.center,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       fit: boxFit!,
//       assetsName,
//       height: height,
//       width: width,
//       alignment: alignment,
//       // theme: SvgTheme(
//       //   currentColor: color ?? const Color(0xFF000000),
//       // ),
//       colorFilter: colorFilter ??
//           ((color == null) ? null : ColorFilter.mode(color!, BlendMode.srcIn)),
//     );
//   }
// }
