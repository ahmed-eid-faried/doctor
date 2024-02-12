import 'package:doctor/core/core/themes/decoration.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class RoundedRectangleWidget extends StatelessWidget {
  const RoundedRectangleWidget({
    super.key,
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: shapeDecoration(
          color: AppColor.white,
          shape: roundedRectangleBorder(
            side: const BorderSide(width: AppSize.s1, color: AppColor.white2),
            borderRadius: BorderRadius.circular(AppSize.s4),
          ),
        ),
        child: widget);
  }
}
