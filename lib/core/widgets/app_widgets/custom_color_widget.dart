import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/core/core/themes/decoration.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/extensions/landscape.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class CustomColorWidget extends StatelessWidget {
  final Color? color;
  const CustomColorWidget({
    super.key,
    this.color = AppColor.rose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s22.landscapeFontR(),
      height: AppSize.s22.landscapeFontR(),
      margin: EdgeInsets.symmetric(horizontal: AppMargin.m2.sp),
      decoration: shapeDecoration(
        color: color,
        shape: OvalBorder(side: BorderSide(width: AppSize.s1.r)),
      ),
    );
  }
}
