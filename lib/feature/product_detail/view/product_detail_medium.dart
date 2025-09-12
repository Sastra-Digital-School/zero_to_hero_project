import 'package:flutter/material.dart';
import 'package:flutter_zth_first/config/theme/app_theme.dart';
import 'package:flutter_zth_first/feature/product_detail/controller/product_detail_controller.dart';
import 'package:flutter_zth_first/feature/product_detail/models/product_detail_model.dart';
import 'package:flutter_zth_first/widget/rate_start.dart';
import 'package:get/get.dart';

class ProductDetailMedium extends GetView<ProductDetailController> {
  const ProductDetailMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody);
  }

  get _buildBody {
    final textTheme = AppTheme.light().textTheme;
    return Obx(() {
      final data = controller.productModelDetail;
      return controller.loading.value
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  bool isPortrait =
                      constraints.maxWidth < constraints.maxHeight;

                  return isPortrait
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.menu),
                                ),
                              ],
                            ),
                            _buildImage(data),
                            _buildDes(data, textTheme),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.menu),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  _buildImage(data),
                                  _buildDes(data, textTheme),
                                ],
                              ),
                            ),
                          ],
                        );
                },
              ),
            );
    });
  }

  _buildImage(ProductModelDetail data) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(radius: 150, backgroundColor: Colors.cyan.shade300),
            Positioned(top: -55, child: Image.network(data.thumbnail ?? '')),
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }

  _buildDes(ProductModelDetail data, TextTheme textTheme) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(data.title ?? '', style: textTheme.displayMedium),
          Row(
            children: [
              Text(
                '\$ ${data.price}',
                style: textTheme.titleSmall?.copyWith(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Text(
            'Description',
            style: textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          Text(data.description ?? '', style: textTheme.bodyLarge),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              controller.toggleReview();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StarRatingWidget(size: 30, rating: data.rating),
                Text(
                  '${data.reviews?.length} reviews',
                  style: textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => controller.showReview.value
                ? SizedBox()
                : Text(
                    '${data.reviews?.map((e) => e.comment).join(', ').replaceAll(', ', '\n')}',
                    style: textTheme.titleLarge,
                  ),
          ),
        ],
      ),
    );
  }
}
