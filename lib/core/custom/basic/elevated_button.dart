import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:doctor/core/custom/basic/text.dart';
import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  final double? radius;
  final double? width;
  final double? height;
  final double? elevation;
  final Color? colors;
  final Color? textColor;
  final double? fontSize;
  final Widget? widget;
  final Color? borderColor;
  final FontWeight? fontWeight;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final BorderSide? side;
  final OutlinedBorder? shape;
  final MouseCursor? enabledMouseCursor;
  final MouseCursor? disabledMouseCursor;
  final VisualDensity? visualDensity;
  final MaterialTapTargetSize? tapTargetSize;
  final Duration? animationDuration;
  final bool? enableFeedback;
  final AlignmentGeometry? alignment;
  final InteractiveInkFeatureFactory? splashFactory;
  final Color? primary;
  final Color? onPrimary;
  final Color? onSurface;
  final TextStyle? style;
  const ElevatedButtonCustom({
    Key? key,
    this.text,
    this.onPressed,
    this.radius = AppSize.s10,
    this.width = double.infinity,
    this.height = AppSize.s50,
    this.elevation = AppSize.s0,
    this.colors,
    this.fontSize,
    this.textColor = AppColor.white,
    this.widget,
    this.borderColor,
    this.fontWeight,
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.enabledMouseCursor,
    this.disabledMouseCursor,
    this.visualDensity,
    this.tapTargetSize,
    this.animationDuration,
    this.enableFeedback,
    this.alignment,
    this.splashFactory,
    this.primary,
    this.onPrimary,
    this.onSurface,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed!();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
          side: BorderSide(color: borderColor ?? UIColor.primary),
        ),
        backgroundColor: colors ?? UIColor.primary,
        elevation: elevation,
        minimumSize: Size(width!, height!),
        textStyle: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(color: textColor),
        foregroundColor: foregroundColor,
        disabledForegroundColor: disabledForegroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        visualDensity: visualDensity,
        padding: padding,
        fixedSize: fixedSize,
        maximumSize: maximumSize,
        side: side,
        enabledMouseCursor: enabledMouseCursor,
        disabledMouseCursor: disabledMouseCursor,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      ),
      child: widget ??
          TextCustom(text!, style: style, textAlign: TextAlign.center),
    );
  }
}
