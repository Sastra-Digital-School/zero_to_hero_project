import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_zth_first/app.dart';
import 'package:flutter_zth_first/config/theme/theme_service.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String envfile = '.env';
  await dotenv.load(fileName: envfile);

  await Get.putAsync(() => ThemeService().init());

  runApp(const SastraApp());
}
