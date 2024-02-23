import 'package:doctor/core/core/utils/constants/svg.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:doctor/features/live_chat/presentation/pages/live_chat_screen_view.dart';
import 'package:doctor/features/live_chat/presentation/pages/test.dart';
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
  PageModel(svg: AppSvg.favNavBar, child: const LiveChatWidget()),
  PageModel(svg: AppSvg.booking, child: Container()),
  PageModel(svg: AppSvg.customService, child: const HomeViewScreen()),
];
