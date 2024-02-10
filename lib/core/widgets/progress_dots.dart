import 'package:doctor/core/core/utils/extensions/landscape.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class KProgressDots extends StatelessWidget {
  final Widget selectedWidget;
  final Widget otherWidget;
  final int length;
  final int currentPage;
  final double paddingBetweenItems;
  const KProgressDots({
    super.key,
    required this.selectedWidget,
    required this.otherWidget,
    this.length = 3,
    required this.currentPage,
    this.paddingBetweenItems = 4,
  });

  @override
  Widget build(BuildContext context) {
    // int currentPage =
    //     BlocProvider.of<OnboardingCubit>(context, listen: true).currentPage;
    return SizedBox(
      height: AppSize.s6..landscapeFontR(),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            SizedBox(width: paddingBetweenItems),
        itemBuilder: (BuildContext context, int index) {
          return index == currentPage ? selectedWidget : otherWidget;
        },
      ),
    );
  }
}
