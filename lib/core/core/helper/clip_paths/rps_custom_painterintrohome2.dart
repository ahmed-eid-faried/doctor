import 'package:doctor/core/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RPSCustomPainterIntrohome2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.03980100);
    path_0.lineTo(0, size.height * 0.1677562);
    path_0.lineTo(0, size.height * 0.9601990);
    path_0.cubicTo(0, size.height * 0.9821791, size.width * 0.02387820,
        size.height, size.width * 0.05333333, size.height);
    path_0.lineTo(size.width * 0.4991540, size.height);
    path_0.lineTo(size.width * 0.9466667, size.height);
    path_0.cubicTo(size.width * 0.9761200, size.height, size.width,
        size.height * 0.9821791, size.width, size.height * 0.9601990);
    path_0.lineTo(size.width, size.height * 0.3469498);
    path_0.lineTo(size.width, size.height * 0.2269831);
    path_0.cubicTo(
        size.width,
        size.height * 0.2050020,
        size.width * 0.9761200,
        size.height * 0.1871821,
        size.width * 0.9466667,
        size.height * 0.1871821);
    path_0.lineTo(size.width * 0.6938733, size.height * 0.1871821);
    path_0.cubicTo(
        size.width * 0.6644193,
        size.height * 0.1871821,
        size.width * 0.6405413,
        size.height * 0.1693627,
        size.width * 0.6405413,
        size.height * 0.1473811);
    path_0.lineTo(size.width * 0.6405413, size.height * 0.03980100);
    path_0.cubicTo(size.width * 0.6405413, size.height * 0.01781950,
        size.width * 0.6166633, 0, size.width * 0.5872080, 0);
    path_0.lineTo(size.width * 0.2402707, 0);
    path_0.lineTo(size.width * 0.05333333, 0);
    path_0.cubicTo(size.width * 0.02387820, 0, 0, size.height * 0.01781955, 0,
        size.height * 0.03980100);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppColor.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
