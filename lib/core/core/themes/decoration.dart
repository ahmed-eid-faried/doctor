import 'package:doctor/core/core/imports/export_path.dart';

ShapeDecoration shapeDecoration(
    {Color? color,
    DecorationImage? image,
    Gradient? gradient,
    List<BoxShadow>? shadows,
    required ShapeBorder shape}) {
  return ShapeDecoration(
    color: color,
    image: image,
    gradient: gradient,
    shadows: shadows,
    shape: shape,
  );
}

BoxDecoration boxDecoration({
  Color? color,
  DecorationImage? image,
  BoxBorder? border,
  BorderRadiusGeometry? borderRadius,
  List<BoxShadow>? boxShadow,
  Gradient? gradient,
  BlendMode? backgroundBlendMode,
  BoxShape shape = BoxShape.rectangle,
}) {
  return BoxDecoration(
    borderRadius: borderRadius,
    shape: shape,
    backgroundBlendMode: backgroundBlendMode,
    boxShadow: boxShadow,
    gradient: gradient,
    border: border,
    image: image,
    color: color,
  );
}

RoundedRectangleBorder roundedRectangleBorder(
    {BorderSide? side, BorderRadiusGeometry? borderRadius}) {
  return RoundedRectangleBorder(
    side: side ?? BorderSide.none,
    borderRadius: borderRadius ?? BorderRadius.circular(AppSize.s4),
  );
}
