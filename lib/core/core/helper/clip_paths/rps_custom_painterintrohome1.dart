import 'package:doctor/core/constant/color.dart';
import 'package:flutter/material.dart';

class RPSCustomPainterintrohome1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9970930, size.height * 0.01821864);
    path_0.lineTo(size.width * 0.9970930, size.height * 0.1662243);
    path_0.lineTo(size.width * 0.9970930, size.height * 0.8830668);
    path_0.cubicTo(
        size.width * 0.9970930,
        size.height * 0.8920101,
        size.width * 0.9866802,
        size.height * 0.8992611,
        size.width * 0.9738372,
        size.height * 0.8992611);
    path_0.lineTo(size.width * 0.5249360, size.height * 0.8992611);
    path_0.cubicTo(
        size.width * 0.5120901,
        size.height * 0.8992611,
        size.width * 0.5016802,
        size.height * 0.9065101,
        size.width * 0.5016802,
        size.height * 0.9154555);
    path_0.lineTo(size.width * 0.5016802, size.height * 0.9817814);
    path_0.cubicTo(
        size.width * 0.5016802,
        size.height * 0.9907247,
        size.width * 0.4912674,
        size.height * 0.9979757,
        size.width * 0.4784244,
        size.height * 0.9979757);
    path_0.lineTo(size.width * 0.02619971, size.height * 0.9979757);
    path_0.cubicTo(
        size.width * 0.01334148,
        size.height * 0.9979757,
        size.width * 0.002923517,
        size.height * 0.9907105,
        size.width * 0.002943895,
        size.height * 0.9817551);
    path_0.lineTo(size.width * 0.004586337, size.height * 0.2600526);
    path_0.lineTo(size.width * 0.004586337, size.height * 0.1198662);
    path_0.cubicTo(
        size.width * 0.004586337,
        size.height * 0.1109225,
        size.width * 0.01499837,
        size.height * 0.1036719,
        size.width * 0.02784221,
        size.height * 0.1036719);
    path_0.lineTo(size.width * 0.4968953, size.height * 0.1036719);
    path_0.cubicTo(
        size.width * 0.5097413,
        size.height * 0.1036719,
        size.width * 0.5201512,
        size.height * 0.09642146,
        size.width * 0.5201512,
        size.height * 0.08747753);
    path_0.lineTo(size.width * 0.5201512, size.height * 0.01821862);
    path_0.cubicTo(
        size.width * 0.5201512,
        size.height * 0.009274737,
        size.width * 0.5305640,
        size.height * 0.002024291,
        size.width * 0.5434070,
        size.height * 0.002024291);
    path_0.lineTo(size.width * 0.9738372, size.height * 0.002024291);
    path_0.cubicTo(
        size.width * 0.9866802,
        size.height * 0.002024291,
        size.width * 0.9970930,
        size.height * 0.009274757,
        size.width * 0.9970930,
        size.height * 0.01821864);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005813953;
    paint0Stroke.color = AppColor.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.stroke;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
