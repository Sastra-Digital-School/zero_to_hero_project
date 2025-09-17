import 'package:flutter/widgets.dart';
import 'package:flutter_zth_first/config/service/api_service.dart';
import 'package:flutter_zth_first/config/service/auth_service.dart';
import 'package:flutter_zth_first/config/service/db/local_database.dart';
import 'package:flutter_zth_first/core/data/string_const.dart';
import 'package:flutter_zth_first/feature/product_detail/models/product_detail_model.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductDetailController extends GetxController {
  LocalDataBase localDataBase = LocalDataBase();
  final auth = AuthService();

  final accessToken = ''.obs;

  ApiService get api =>
      ApiService(baseUrl: baseUrl, accessToken: accessToken.value);

  var loading = false.obs;

  ProductModelDetail productModelDetail = ProductModelDetail();

  Future<void> fetchDataDetail(String? id) async {
    loading.value = true;

    await api.callApi(
      endpoint: '/products/$id',
      headers: {'Content-Type': 'application/json'},
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

  late Product product;
  late List<Product> products;

  var nameController = TextEditingController().obs;
  var priceController = TextEditingController().obs;

  Future<void> insertProduct(String name, double price) async {
    loading.value = true;
    product = Product(name: name, price: price);
    await localDataBase.insertProduct(product);
    loading.value = false;
  }

  Future<void> getProduct() async {
    loading.value = true;
    products = await localDataBase.getProducts();

    loading.value = false;
  }

  Future<void> removeProductByID(int id) async {
    loading.value = true;
    await localDataBase.deleteProduct(id);
    loading.value = false;
  }

  Future<void> removeProductAll() async {
    loading.value = true;
    await localDataBase.delectAllProduct();
    loading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();

    var id = Get.arguments;
    await fetchDataDetail(id);
    accessToken.value = await auth.getAccessToken() ?? '';

    await getProduct();
  }
}
