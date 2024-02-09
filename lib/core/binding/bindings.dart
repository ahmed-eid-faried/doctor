import 'package:doctor/core/class/curd.dart';
import 'package:doctor/features/onboarding/controller/onboarding.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Curd());
    Get.lazyPut(() => OnBoardingControllerImp(), fenix: true);
    // Get.lazyPut(() => FavoriteControllerImp(), fenix: true);
    // Get.lazyPut(() => SearchControllerImp(), fenix: true);
    // Get.lazyPut(() => OffersControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    // Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }
}
