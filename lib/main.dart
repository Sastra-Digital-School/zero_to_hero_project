import 'package:flutter/material.dart';
import 'package:flutter_zth_first/app.dart';
import 'package:flutter_zth_first/config/theme/theme_service.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => ThemeService().init());
  runApp(const SastraApp());
}
