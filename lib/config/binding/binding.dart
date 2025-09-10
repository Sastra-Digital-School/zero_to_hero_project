import 'package:flutter_zth_first/feature/product_detail/controller/product_detail_controller.dart';
import 'package:flutter_zth_first/feature/profile/controller/profile_controller.dart';
import 'package:flutter_zth_first/feature/save/controller/save_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<SaveController>(() => SaveController());
    Get.lazyPut<ProductDetailController>(() => ProductDetailController());
  }
}
