import 'package:doctor/core/localization/locale.dart';
import 'package:doctor/core/binding/bindings.dart';
import 'package:doctor/core/constant/apptheme.dart';
import 'package:doctor/core/constant/routes.dart';
import 'package:doctor/core/localization/translation.dart';
import 'package:doctor/core/services/services.dart';
import 'package:doctor/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await initService();
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Translation(), locale: controller.lang,
          title: 'Doctor',
          theme: AppThemes.stdTheme,
          initialRoute: AppRoute.home,
          // initialRoute: '/test',
          getPages: routes,
          initialBinding: MyBindings(),
        );
      },
    );
  }
}
