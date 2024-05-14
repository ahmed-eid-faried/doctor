import 'package:doctor/core/binding/bindings.dart';
import 'package:doctor/core/constant/apptheme.dart';
import 'package:doctor/core/constant/routes.dart';
import 'package:doctor/core/localization/locale.dart';
import 'package:doctor/core/localization/translation.dart';
import 'package:doctor/core/services/services.dart';
import 'package:doctor/features/auth/controller/otp_cubit/otp_cubit.dart';
import 'package:doctor/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';

void main() async {
  await initService();
  runApp(MultiBlocProvider(
    providers: CubitProviders.providers,
    child: const MyApp(),
  ));
  FlutterNativeSplash.remove();
}

// OtpCubit
class MyApp extends StatelessWidget {
  const MyApp({super.key});
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

class CubitProviders {
  static List<SingleChildWidget> providers = [
    BlocProvider(
      create: (context) => OtpCubit(),
    ),
  ];
}
