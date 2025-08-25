import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxInt index = 0.obs;

  void indexIncrement() {
    index.value++;
  }

  void decrement() {
    if (index.value != 0) {
      index.value--;
    }
  }
}
