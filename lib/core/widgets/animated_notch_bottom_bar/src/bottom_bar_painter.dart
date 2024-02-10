 
import 'package:flutter/material.dart';

class BottomBarPainter extends CustomPainter {
  BottomBarPainter(
      {required this.position,
      required this.color,
      required this.showShadow,
      required this.notchColor,
      required this.xFactor,
      this.shader,
      required this.kBottomRadius,
      required this.positiony,
      required this.animationController,
      required this.oldIndex,
      required this.scrollPosition,
      this.shadowElevation})
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true,
        _shadowColor = Colors.grey.shade600,
        _notchPaint = Paint()
          ..color = notchColor
          ..isAntiAlias = true;

  /// position
  final double position;

  /// Color for the bottom bar
  final Color color;

  //final shadow show
  final double? shadowElevation;

  /// Paint value to custom painter
  final Paint _paint;

  // shader

  final Shader? shader;

  /// Shadow Color
  final Color _shadowColor;

  // bottom radius
  double kBottomRadius;

  /// Boolean to show shadow
  final bool showShadow;

  /// Paint Value of notch
  final Paint _notchPaint;

  /// Color for the notch
  final Color notchColor;

  /// index for the page

  final int xFactor;
  final double positiony;
  final AnimationController animationController;
  final double oldIndex;
  final double scrollPosition;
  @override
  void paint(Canvas canvas, Size size) {
    _drawBar(canvas, size);
    // _drawFloatingCircle(canvas, shader, size);
  }

  @override
  bool shouldRepaint(BottomBarPainter oldDelegate) {
    return position != oldDelegate.position || color != oldDelegate.color;
  }

  /// draw bottom bar
  void _drawBar(Canvas canvas, Size size) {
    double factor = (size.width * 0.16) * scrollPosition;

    // printf("=============================================");
    // printf(factor);
    // printf(animationController.value);
    // printf(scrollPosition);
    // printf("=============================================");
    Path path = Path();
    path.moveTo(size.width * 0.2567964 + factor, size.height * 0.2511886);
    path.cubicTo(
      size.width * 0.2724561 + factor,
      size.height * 0.1225456,
      size.width * 0.2873743 + factor,
      0,
      size.width * 0.3257849 + factor,
      0,
    );

    path.lineTo(size.width * 0.9664804, 0);
    path.cubicTo(
      size.width * 0.9849916,
      0,
      size.width,
      size.height * 0.07675086,
      size.width,
      size.height * 0.1714286,
    );
    path.lineTo(size.width, size.height * 0.8285714);
    path.cubicTo(
      size.width,
      size.height * 0.9232486,
      size.width * 0.9849916,
      size.height,
      size.width * 0.9664804,
      size.height,
    );
    path.lineTo(size.width * 0.03351955, size.height);
    path.cubicTo(
      size.width * 0.01500723,
      size.height,
      0,
      size.height * 0.9232486,
      0,
      size.height * 0.8285714,
    );
    path.lineTo(0, size.height * 0.1714286);
    path.cubicTo(
      0,
      size.height * 0.07675086,
      size.width * 0.01500721,
      0,
      size.width * 0.03351955,
      0,
    );
    path.lineTo(size.width * 0.03396704 + factor, 0);
    path.cubicTo(
      size.width * 0.05437598 + factor,
      0,
      size.width * 0.06765196 + factor,
      size.height * 0.09910714,
      size.width * 0.08285922 + factor,
      size.height * 0.2126286,
    );
    path.cubicTo(
      size.width * 0.1032427 + factor,
      size.height * 0.3647929,
      size.width * 0.1270958 + factor,
      size.height * 0.5428571,
      size.width * 0.1762466 + factor,
      size.height * 0.5428571,
    );
    path.cubicTo(
      size.width * 0.2212913 + factor,
      size.height * 0.5428571,
      size.width * 0.2394966 + factor,
      size.height * 0.3933029,
      size.width * 0.2567964 + factor,
      size.height * 0.2511886,
    );
    path.close();

    if (showShadow) {
      canvas.drawShadow(path, _shadowColor, shadowElevation ?? 5, true);
    }
    canvas.drawPath(path, _paint);
  }
}
