import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt counter = 0.obs;

  increment() {
    counter++;
    update();
  }

  decrement() {
    counter--;
    update();
  }

  reset() {
    counter.value = 0;
  }
}
