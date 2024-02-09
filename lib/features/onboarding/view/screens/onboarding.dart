import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/features/onboarding/controller/onboarding.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/customslider.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/dotcontroller.dart';

class OnBoardingView extends GetView<OnBoardingControllerImp> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Stack(
        children: [
          GetBuilder<OnBoardingControllerImp>(
            init: OnBoardingControllerImp(),
            builder: (controller) => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: controller.top.h,
              left: controller.left.w,
              curve: Curves.easeInOut,
              child: Container(
                width: 342,
                height: 342,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.19),
                    end: Alignment(-0.98, 0.19),
                    colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)],
                  ),
                  shape: OvalBorder(),
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Expanded(
                flex: 4,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
