import 'package:get/get.dart';

class Controllers extends GetxController {
  RxBool notification = false.obs;

  setSwitch(bool value) {
    notification.value = value;
  }
}
