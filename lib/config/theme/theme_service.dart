import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app_theme.dart';

class ThemeService extends GetxService {
  static const _key = 'isDark';
  final _box = GetStorage();

  ThemeMode get themeMode => ThemeMode.light; // only light for now (matches UI)
  ThemeData get theme => AppTheme.light();

  Future<ThemeService> init() async {
    await GetStorage.init();
    return this;
  }

  // If you later add a dark theme, use this:
  bool get isDark => _box.read(_key) ?? false;
  void toggleTheme() {
    final next = !isDark;
    _box.write(_key, next);
    Get.changeThemeMode(next ? ThemeMode.dark : ThemeMode.light);
  }
}
