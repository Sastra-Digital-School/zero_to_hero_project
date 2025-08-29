import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient header; // top app header bg
  final Gradient banner; // "Compare Prices" card bg

  const AppGradients({required this.header, required this.banner});

  factory AppGradients.defaults() => AppGradients(
    header: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFFE9FAFF), Color(0xFFD4F0F6), Color(0xFFEFF6F9)],
      stops: [0.0, 0.55, 1.0],
    ),
    banner: const LinearGradient(
      colors: [AppColors.banner, Color(0xFF123C46)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  @override
  AppGradients copyWith({Gradient? header, Gradient? banner}) => AppGradients(
    header: header ?? this.header,
    banner: banner ?? this.banner,
  );

  @override
  ThemeExtension<AppGradients> lerp(
    ThemeExtension<AppGradients>? other,
    double t,
  ) {
    if (other is! AppGradients) return this;
    return AppGradients(
      header: Gradient.lerp(header, other.header, t)!,
      banner: Gradient.lerp(banner, other.banner, t)!,
    );
  }
}
