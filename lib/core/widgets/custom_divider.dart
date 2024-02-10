import 'package:doctor/core/core/utils/constants/colors.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;
  const CustomDivider({
    super.key,
    this.height = AppSize.s1,
    this.thickness = AppSize.s1,
    this.indent,
    this.endIndent,
    this.color = AppColor.white2,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
    );
  }
}
