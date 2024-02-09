import 'package:doctor/core/constant/sizes.dart';
import 'package:doctor/data/datasource/static/static.dart';
import 'package:doctor/features/onboarding/controller/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              SizedBox(height: 90.h),
              Container(
                width: 336,
                height: 336,
                // height: Get.width / 1.3,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingList[i].image!),
                    fit: BoxFit.fill,
                  ),
                  shape: const OvalBorder(),
                ),
              ),
              SizedBox(height: 41.h),
              Text(
                onBoardingList[i].title!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: 28.sp,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 274.w,
                height: 70.h,
                child: Text(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xE5677294),
                    fontSize: 14.sp,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
