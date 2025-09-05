import 'package:flutter/material.dart';
import 'package:flutter_zth_first/config/theme/app_theme.dart';
import 'package:flutter_zth_first/config/theme/theme_service.dart';
import 'package:flutter_zth_first/config/binding/binding.dart';
import 'package:get/get.dart';

import 'core/routes/app_pages.dart';

class SastraApp extends StatelessWidget {
  const SastraApp({super.key});

  @override
  Widget build(BuildContext context) {
    final service = Get.find<ThemeService>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flexipay',
      theme: AppTheme.light(),
      themeMode: service.themeMode,
      initialBinding: InitBinding(),
      initialRoute: '/',
      // initialRoute: RouteView.home.name,
      getPages: AppRouting.route,

      // getPages: [
      //   GetPage(name: '/', page: () => const MainScreen()),
      //   GetPage(name: '/personal', page: () => const PersonalDetailScreen()),
      // ],

      // routes: routes,
    );
  }
}
