import 'package:flutter/material.dart';
import 'package:flutter_zth_first/routes/routes.dart';
import 'package:get/get.dart';

class SastraApp extends StatelessWidget {
  const SastraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: routes,
    );
  }
}
