import 'package:flutter/material.dart';
import 'package:flutter_zth_first/routes/routes.dart';

class SastraApp extends StatelessWidget {
  const SastraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: routes,
    );
  }
}
