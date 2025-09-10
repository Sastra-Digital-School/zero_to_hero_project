import 'package:flutter/cupertino.dart';
import 'package:flutter_zth_first/core/routes/app_routes.dart';
import 'package:flutter_zth_first/feature/home/view/home_screen.dart';
import 'package:flutter_zth_first/feature/main_screen/main_screen.dart';
import 'package:flutter_zth_first/feature/personal_detail/view/personal_detail_screen.dart';
import 'package:flutter_zth_first/feature/product_detail/binding/product_detail_binding.dart';
import 'package:flutter_zth_first/feature/product_detail/view/product_detail.dart';
import 'package:flutter_zth_first/feature/profile/view/profile_screen.dart';
import 'package:flutter_zth_first/feature/save/view/save_screen.dart';
import 'package:get/get.dart';

class AppRouting {
  static final route = RouteView.values.map((e) {
    switch (e) {
      case RouteView.main:
        return GetPage(
          name: "/",
          page: () => MainScreen(),
          transition: Transition.noTransition,
        );
      case RouteView.home:
        return GetPage(
          name: "/${e.name}",
          page: () => HomeScreen(),
          transition: Transition.noTransition,
        );
      case RouteView.save:
        return GetPage(
          name: "/${e.name}",
          page: () => SaveScreen(),
          transition: Transition.noTransition,
        );
      case RouteView.money:
        return GetPage(
          name: "/${e.name}",
          page: () => Container(),
          transition: Transition.noTransition,
        );
      case RouteView.profile:
        return GetPage(
          name: "/${e.name}",
          page: () => ProfileScreen(),
          transition: Transition.noTransition,
        );

      case RouteView.personal:
        return GetPage(
          name: "/${e.name}",
          page: () => PersonalDetailScreen(),
          transition: Transition.noTransition,
        );
      case RouteView.productDetail:
        return GetPage(
          name: "/${e.name}",
          page: () => ProductDetail(),
          transition: Transition.noTransition,
          binding: ProductDetailBinding(),
        );
    }
  }).toList();
}
