import 'package:flutter_zth_first/config/service/api_service.dart';
import 'package:flutter_zth_first/core/data/string_const.dart';
import 'package:flutter_zth_first/feature/product_detail/models/product_detail_model.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  ApiService get api => ApiService(baseUrl: baseUrl);
  var loading = false.obs;

  ProductModelDetail productModelDetail = ProductModelDetail();

  Future<void> fetchDataDetail(String? id) async {
    loading.value = true;

    await api.callApi(
      endpoint: '/products/$id',
      fromJson: (json) {
        productModelDetail = ProductModelDetail.fromJson(json);
      },
    );

    loading.value = false;
  }

  var showReview = true.obs;

  void toggleReview() {
    showReview.value = !showReview.value;
  }

  @override
  void onInit() async {
    super.onInit();
    var id = Get.arguments;
    await fetchDataDetail(id);
  }
}
