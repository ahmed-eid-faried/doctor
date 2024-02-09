import 'package:doctor/core/constant/routes.dart';
import 'package:doctor/core/services/services.dart';
import 'package:doctor/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  position();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;
  var top = -20.0.obs;
  var left = -104.0.obs;
  MyService myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.pref.setString("login", "1");
      Get.offAllNamed(AppRoute.onboarding);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
    position();
  }

  @override
  position() {
    if (currentPage == 0) {
      top = -20;
      left = -104;
    } else if (currentPage == 1) {
      top = -20;
      left = 175;
    } else {
      top = -20;
      left = -104;
    }
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    position();

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
