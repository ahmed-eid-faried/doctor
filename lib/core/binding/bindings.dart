import 'package:doctor/core/class/curd.dart';
 import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Curd());
    // Get.lazyPut(() => HomeScreenControllerImp(), fenix: true);
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
