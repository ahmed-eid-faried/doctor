import 'package:doctor/core/core/utils/constants/svg.dart';
import 'package:doctor/features/doctor_details_screen/view/doctor_details_screen.dart';
import 'package:doctor/features/favourite_doctors_screen/view/favourite_doctors_screen.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MainPageController extends GetxController {}

class MainPageControllerImp extends MainPageController {
  int index = 0;

  void changePage(int kindex) {
    index = kindex;
    update();
  }
}

class PageModel {
  final String svg;
  final Widget child;
  PageModel({
    required this.svg,
    required this.child,
  });
}

List<PageModel> pageList = [
  PageModel(svg: AppSvg.home, child: const HomeViewScreen()),
  PageModel(svg: AppSvg.favNavBar, child: const FavouriteDoctorsScreen()),
  PageModel(svg: AppSvg.booking, child: const DoctorDetailsScreen()),
  PageModel(svg: AppSvg.customService, child: const HomeViewScreen()),
];
