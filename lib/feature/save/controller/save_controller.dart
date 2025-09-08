import 'package:flutter_zth_first/config/service/api_service.dart';
import 'package:flutter_zth_first/feature/save/model/product_model.dart';
import 'package:get/get.dart';

class SaveController extends GetxController {
  ApiService get api => ApiService(baseUrl: 'https://dummyjson.com');

  var loading = false.obs;

  ProductModel productModel = ProductModel();

  Future<void> fetchData() async {
    loading.value = true;

    await api.callApi(
      endpoint: '/products',
      fromJson: (json) {
        productModel = ProductModel.fromJson(json);
      },
    );

    loading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await fetchData();
  }
}
