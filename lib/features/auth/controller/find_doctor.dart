import 'package:get/get.dart';

abstract class FindDoctorController extends GetxController {
  changeState();
  bookingNow();
}

class FindDoctorControllerImp extends FindDoctorController {
  bool likeState = false;

  @override
  changeState() {
    likeState = !likeState;
    update();
  }

  @override
  bookingNow() {
    likeState = !likeState;
    update();
  }
}
