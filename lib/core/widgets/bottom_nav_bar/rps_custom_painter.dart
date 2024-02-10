// import 'package:doctor/core/utils/constants/colors.dart';
// import 'package:flutter/material.dart';

// class BottomNavBarRPSCustomPainter extends CustomPainter {
//   final double xAxisFactor;

//   BottomNavBarRPSCustomPainter({this.xAxisFactor = 1});

//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.2567964 + size.width * 0.16 * xAxisFactor,
//         size.height * 0.2511886);
//     path_0.cubicTo(
//       size.width * 0.2724561 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.1225456,
//       size.width * 0.2873743 + size.width * 0.16 * xAxisFactor,
//       0,
//       size.width * 0.3257849 + size.width * 0.16 * xAxisFactor,
//       0,
//     );
//     path_0.lineTo(size.width * 0.9664804, 0);
//     path_0.cubicTo(
//       size.width * 0.9849916,
//       0,
//       size.width,
//       size.height * 0.07675086,
//       size.width,
//       size.height * 0.1714286,
//     );
//     path_0.lineTo(size.width, size.height * 0.8285714);
//     path_0.cubicTo(
//       size.width,
//       size.height * 0.9232486,
//       size.width * 0.9849916,
//       size.height,
//       size.width * 0.9664804,
//       size.height,
//     );
//     path_0.lineTo(size.width * 0.03351955, size.height);
//     path_0.cubicTo(
//       size.width * 0.01500723,
//       size.height,
//       0,
//       size.height * 0.9232486,
//       0,
//       size.height * 0.8285714,
//     );
//     path_0.lineTo(0, size.height * 0.1714286);
//     path_0.cubicTo(
//       0,
//       size.height * 0.07675086,
//       size.width * 0.01500721,
//       0,
//       size.width * 0.03351955,
//       0,
//     );
//     path_0.lineTo(size.width * 0.03396704 + size.width * 0.16 * xAxisFactor, 0);
//     path_0.cubicTo(
//       size.width * 0.05437598 + size.width * 0.16 * xAxisFactor,
//       0,
//       size.width * 0.06765196 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.09910714,
//       size.width * 0.08285922 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.2126286,
//     );
//     path_0.cubicTo(
//       size.width * 0.1032427 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.3647929,
//       size.width * 0.1270958 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.5428571,
//       size.width * 0.1762466 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.5428571,
//     );
//     path_0.cubicTo(
//       size.width * 0.2212913 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.5428571,
//       size.width * 0.2394966 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.3933029,
//       size.width * 0.2567964 + size.width * 0.16 * xAxisFactor,
//       size.height * 0.2511886,
//     );
//     path_0.close();

//     Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = AppColor.black.withOpacity(1.0);
//     canvas.drawPath(path_0, paint0Fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
