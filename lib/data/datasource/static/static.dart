import 'package:doctor/core/constant/image.dart';
import 'package:doctor/features/onboarding/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Find Trusted Doctors".tr,
      body:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."
              .tr,
      image: AppImage.onBoardingImageOne),
  OnBoardingModel(
      title: "Choose Best Doctors".tr,
      body:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."
              .tr,
      image: AppImage.onBoardingImageTwo),
  OnBoardingModel(
      title: "Easy Appointments".tr,
      body:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."
              .tr,
      image: AppImage.onBoardingImageThree),
];
