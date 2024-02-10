import 'package:doctor/core/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RPSCustomPainterIntrohome3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.003355705, size.height * 0.1231527);
    path_0.lineTo(size.width * 0.003355705, size.height * 0.1710296);
    path_0.lineTo(size.width * 0.003355705, size.height * 0.8768473);
    path_0.cubicTo(
        size.width * 0.003355705,
        size.height * 0.9421429,
        size.width * 0.03941309,
        size.height * 0.9950739,
        size.width * 0.08389262,
        size.height * 0.9950739);
    path_0.lineTo(size.width * 0.4991611, size.height * 0.9950739);
    path_0.lineTo(size.width * 0.9161074, size.height * 0.9950739);
    path_0.cubicTo(
        size.width * 0.9605872,
        size.height * 0.9950739,
        size.width * 0.9966443,
        size.height * 0.9421429,
        size.width * 0.9966443,
        size.height * 0.8768473);
    path_0.lineTo(size.width * 0.9966443, size.height * 0.3484576);
    path_0.lineTo(size.width * 0.9966443, size.height * 0.3084906);
    path_0.cubicTo(
        size.width * 0.9966443,
        size.height * 0.2431961,
        size.width * 0.9605872,
        size.height * 0.1902640,
        size.width * 0.9161074,
        size.height * 0.1902640);
    path_0.lineTo(size.width * 0.7027248, size.height * 0.1902640);
    path_0.cubicTo(
        size.width * 0.6678624,
        size.height * 0.1902640,
        size.width * 0.6395973,
        size.height * 0.1487749,
        size.width * 0.6395973,
        size.height * 0.09759507);
    path_0.cubicTo(
        size.width * 0.6395973,
        size.height * 0.04641542,
        size.width * 0.6113356,
        size.height * 0.004926108,
        size.width * 0.5764698,
        size.height * 0.004926108);
    path_0.lineTo(size.width * 0.2420138, size.height * 0.004926108);
    path_0.lineTo(size.width * 0.08389262, size.height * 0.004926108);
    path_0.cubicTo(
        size.width * 0.03941342,
        size.height * 0.004926108,
        size.width * 0.003355705,
        size.height * 0.05785813,
        size.width * 0.003355705,
        size.height * 0.1231527);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.w;
    paint0Stroke.color = AppColor.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.stroke;
    paint0Fill.color = const Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
