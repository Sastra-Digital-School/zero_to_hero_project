import 'package:flutter/material.dart';
import 'package:flutter_zth_first/config/responsive/main_responsive.dart';
import 'package:flutter_zth_first/feature/product_detail/view/product_detail.dart';
import 'package:flutter_zth_first/feature/product_detail/view/product_detail_medium.dart';

class ProductDetailResponsive extends StatefulWidget {
  const ProductDetailResponsive({super.key});

  @override
  State<ProductDetailResponsive> createState() =>
      _ProductDetailResponsiveState();
}

class _ProductDetailResponsiveState extends State<ProductDetailResponsive> {
  @override
  Widget build(BuildContext context) {
    return MainResponsive(
      small: ProductDetail(),
      medium: ProductDetailMedium(),
    );
  }
}
