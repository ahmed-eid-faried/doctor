import 'package:flutter/material.dart';

class SizedBoxCustom extends StatelessWidget {
  const SizedBoxCustom({super.key, this.width, this.height, this.child});
  final double? width;
  final double? height;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: child,
    );
  }
}

class Gap extends StatelessWidget {
  const Gap(this.value, {super.key, required this.axis});
  const Gap.h(this.value, {super.key, this.axis = Axis.vertical});
  const Gap.w(this.value, {super.key, this.axis = Axis.horizontal});
  final double value;
  final Axis axis;
  @override
  Widget build(BuildContext context) {
    double kvalue = ((value % 2 == 0) ? value : (value.round() + 1)).toDouble();
    return axis == Axis.horizontal
        ? SizedBox(width: kvalue)
        : SizedBox(height: kvalue);
  }
}
