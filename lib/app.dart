import 'package:flutter/material.dart';
import 'package:flutter_zth_first/view/home_screen.dart';

class SastraApp extends StatelessWidget {
  const SastraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}
