import 'package:doctor/core/constant/routes.dart';
import 'package:doctor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddlewaresLogin extends GetMiddleware {
  @override
  // ignore: overridden_fields
  int? priority = 1;
  MyService myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.pref.getString("login") == "2") {
      return const RouteSettings(name: AppRoute.home);
    }
    if (myServices.pref.getString("login") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
