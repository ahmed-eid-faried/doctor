
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:doctor/core/function/get_des_of_position.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:doctor/firebase_options.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class MyService extends GetxService {
  late SharedPreferences pref;
  late LocationMap locationMap;
  Future<MyService> init() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    // FlutterError.onError = (errorDetails) {
    //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    // };
    // PlatformDispatcher.instance.onError = (error, stack) {
    //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    //   return true;
    // };
    // await GetStorage.init();
    // handlingErrors();
    pref = await SharedPreferences.getInstance();
    locationMap = LocationMap();
    // Stripe.publishableKey = ApiKeys.publishableKeyStripe;

    if (GetPlatform.isAndroid ||
        GetPlatform.isIOS ||
        GetPlatform.isMacOS ||
        GetPlatform.isWeb) {
      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    }

    // await locationMap.check(null);
    // await Firebase.initializeApp(
    //     options: DefaultFirebaseOptions.currentPlatform);
    // await requestPermissionsMessage();
    // await gettokens();
    // await intialmassage();
    // onMessageOpenedApp();
    // onBackgroundMessage();
    return this;
  }
}

initService() async {
  await Get.putAsync(() => MyService().init());
}

// handlingErrors() {
//   RenderErrorBox.backgroundColor = AppColor.primaryColor;
//   ErrorWidget.builder = (FlutterErrorDetails details) => Container();

//   // ErrorWidget.builder = (FlutterErrorDetails details) {
//   //   print("details of errors:- $details");
//   //   return Container(
//   //       color: AppColor.primaryColor,
//   //       child: Padding(
//   //         padding: const EdgeInsets.all(20),
//   //         child: Text("$details"),
//   //       ));
//   // };
//   // RenderErrorBox.textStyle = RenderErrorBox.textStyle;
//   // RenderErrorBox.padding = const EdgeInsets.all(10);
// }
