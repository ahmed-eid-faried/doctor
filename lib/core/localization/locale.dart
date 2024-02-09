import 'package:doctor/core/function/fcmconfig.dart';
import 'package:doctor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  late Locale lang;
  MyService myService = Get.find();
  // ThemeData myTheme = AppThemes.english;
  changeLang(String langcode) {
    lang = Locale(langcode);
    myService.pref.setString("lang", langcode);
    // myTheme = langcode == "ar" ? AppThemes.arabic : AppThemes.english;
    // Get.changeTheme(myTheme);
    Get.updateLocale(lang);
  }

  @override
  void onInit() {
    if (GetPlatform.isAndroid ||
        GetPlatform.isIOS ||
        GetPlatform.isMacOS ||
        GetPlatform.isWeb) {
      requestPermission();
      fcmconfig();
    }

    String? currentlang = myService.pref.getString("lang");
    if (currentlang == "ar") {
      lang = const Locale("ar");
      // myTheme = AppThemes.arabic;
      // Get.changeTheme(myTheme);
      Get.updateLocale(lang);
    } else if (currentlang == "en") {
      lang = const Locale("en");
      // myTheme = AppThemes.english;
      // Get.changeTheme(myTheme);
      Get.updateLocale(lang);
    } else {
      // lang = Get.deviceLocale!;
      lang = Locale(Get.deviceLocale!.languageCode);
      // Get.changeTheme(myTheme);
    }
    super.onInit();
  }
}
