import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_zth_first/app.dart';
import 'package:flutter_zth_first/config/service/auth_service.dart';
import 'package:flutter_zth_first/config/service/local_service.dart';
import 'package:flutter_zth_first/config/theme/theme_service.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocalStorageService.instance.init();

  final auth = AuthService();

  String envfile = '.env';
  await dotenv.load(fileName: envfile);

  await Get.putAsync(() => ThemeService().init());

  await auth.storeToken('3r34t23534534523543523543523543523fsfasfsa53523545');

  runApp(const SastraApp());
}
