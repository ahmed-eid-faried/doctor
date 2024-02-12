import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'flutter_advanced_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.color,
    this.width = AppSize.s7,
  });
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    double factor = width / AppSize.s7;

    return AdvancedSwitch(
        controller: ValueNotifier(false),
        width: factor * AppSize.s22.r,
        height: factor * AppSize.s12.r,
        activeColor: color,
        inactiveColor: color,
        thumb: Icon(Icons.circle, color: AppColor.white, size: width.r));
  }
}
