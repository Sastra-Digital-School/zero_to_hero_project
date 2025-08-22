import 'package:flutter/material.dart';
import 'package:flutter_zth_first/view/main_screen.dart';
import 'package:flutter_zth_first/view/personal_detail_screen.dart';

class NoAnimationPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationPageRoute({required super.builder, super.settings});

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  Duration get reverseTransitionDuration => Duration.zero;
}

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => const MainScreen(initialIndex: 0),
  '/home': (_) => const MainScreen(initialIndex: 0),
  '/save': (_) => const MainScreen(initialIndex: 1),
  '/money': (_) => const MainScreen(initialIndex: 2),
  '/profile': (_) => const MainScreen(initialIndex: 3),
  '/personal': (_) => const PersonalDetailScreen(),
};
