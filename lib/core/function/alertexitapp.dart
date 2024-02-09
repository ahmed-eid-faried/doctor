import 'dart:io';

import 'package:get/get.dart';
import 'package:doctor/core/constant/routes.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "Warning",
    middleText: "Do You Want To Exit The App",
    onConfirm: () => exit(0),
    onCancel: () => Get.back(),
  );
  return Future.value(false);
}

Future<bool> backAppHome() {
  // HomeControllerImp.currentpage = 0;
  Get.offNamed(AppRoute.home);
  // Get.back(closeOverlays: true);
  return Future.value(true);
}
