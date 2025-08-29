import 'package:flutter/material.dart';
import 'package:flutter_zth_first/config/theme/app_theme.dart';
import 'package:flutter_zth_first/config/theme/theme_service.dart';
import 'package:flutter_zth_first/core/routes/routes.dart';
import 'package:get/get.dart';

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
      initialRoute: '/',
      routes: routes,
    );
  }
}
