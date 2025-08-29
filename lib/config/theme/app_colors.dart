import 'package:flutter/material.dart';

/// Core palette extracted from your mock
/// (soft aqua header, dark-teal banner, light surfaces, pastel accents)
class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF15B5C0); // aqua/teal
  static const Color onPrimary = Colors.white;

  static const Color secondary = Color(0xFF6AD3C0); // mint
  static const Color onSecondary = Color(0xFF0B3440);

  static const Color tertiary = Color(0xFF8DA8FF); // soft indigo/purple
  static const Color onTertiary = Colors.white;

  // Surfaces
  static const Color surface = Colors.white;
  static const Color onSurface = Color(0xFF0B3440); // deep teal-ish text
  static const Color surfaceVariant = Color(0xFFF3F6F8); // cards/background

  // Neutrals
  static const Color outline = Color(0xFFE3E8EF);
  static const Color outlineVariant = Color(0xFFBAC7D5);
  static const Color muted = Color(0xFF71849A);

  // States
  static const Color success = Color(0xFF2DBE7E);
  static const Color warning = Color(0xFFFFB657);
  static const Color error = Color(0xFFE85C5C);

  // Banner / promo (dark teal card)
  static const Color banner = Color(0xFF0C2E37);
  static const Color onBanner = Colors.white;

  // Category icon pastels (Shop, In-store, Rewards, Deals, Saved)
  static const Color catBlue = Color(0xFF6CB7FF);
  static const Color catGreen = Color(0xFF76D98C);
  static const Color catPurple = Color(0xFFB9A7FF);
  static const Color catPink = Color(0xFFE7B4F2);
  static const Color catOrange = Color(0xFFFFC88A);
}
