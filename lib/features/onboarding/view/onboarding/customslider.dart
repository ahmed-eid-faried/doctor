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
              const SizedBox(height: 30),
              Stack(children: [
                Container(
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
              ]),
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
