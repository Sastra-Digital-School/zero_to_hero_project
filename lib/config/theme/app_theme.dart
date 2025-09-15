import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_gradients.dart';

class AppTheme {
  AppTheme._();

  // shared radii/elevations
  static const double rLg = 20;
  static const double rMd = 14;
  static const double rSm = 10;
  static const double elev0 = 0;
  static const double elev1 = 1;
  static const double elev2 = 3;

  static ThemeData light() {
    // Safer ColorScheme: start from seed, then override our brand colors
    final scheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppColors.primary,
          onPrimary: AppColors.onPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.onSecondary,
          tertiary: AppColors.tertiary,
          onTertiary: AppColors.onTertiary,
          surface: AppColors.surface,
          onSurface: AppColors.onSurface,
          // keep generated values for the rest (containers, inverse, etc.)
          error: AppColors.error,
          outline: AppColors.outline,
          // outlineVariant usually exists; if not on your SDK, remove this line.
          outlineVariant: AppColors.outlineVariant,
        );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.surfaceVariant,
    );

    // Typography
    final text = base.textTheme
        .apply(
          displayColor: AppColors.onSurface,
          bodyColor: AppColors.onSurface,
        )
        .copyWith(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
          ),
          displayMedium: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.2,
          ),
          displaySmall: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          headlineSmall: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.muted),
          bodySmall: TextStyle(fontSize: 12, color: AppColors.muted),
          labelLarge: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          labelMedium: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          labelSmall: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        );

    return base.copyWith(
      textTheme: text,
      iconTheme: const IconThemeData(size: 22, color: AppColors.onSurface),
      // keep gradient extension
      extensions: <ThemeExtension<dynamic>>[AppGradients.defaults()],

      // AppBar
      appBarTheme: AppBarTheme(
        elevation: elev0,
        scrolledUnderElevation: elev0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: text.titleLarge?.copyWith(letterSpacing: 0.2),
        iconTheme: const IconThemeData(color: AppColors.onSurface, size: 24),
      ),

      // Cards
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: elev1,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(rLg)),
        surfaceTintColor: Colors.transparent, // avoid M3 overlay tint
      ),

      // Inputs (Search/TextField pill)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        hintStyle: text.bodyMedium,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.outline),
          borderRadius: BorderRadius.circular(28),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.outline),
          borderRadius: BorderRadius.circular(28),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primary, width: 1.6),
          borderRadius: BorderRadius.circular(28),
        ),
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: elev0,
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rMd),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          elevation: elev0,
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.onSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rMd),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rSm),
          ),
        ),
      ),

      // Chips
      chipTheme: base.chipTheme.copyWith(
        backgroundColor: AppColors.surfaceVariant,
        // use withOpacity for broader Flutter compatibility
        selectedColor: AppColors.primary.withValues(alpha: 0.12),
        labelStyle: text.labelMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: const BorderSide(color: AppColors.outline),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.surface,
        elevation: elev2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.onSurface,
        unselectedItemColor: AppColors.muted,
        selectedLabelStyle: text.labelSmall,
        unselectedLabelStyle: text.labelSmall,
        showUnselectedLabels: true,
      ),

      // ListTile
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.onSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(rMd)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // Dividers
      dividerTheme: const DividerThemeData(
        color: AppColors.outline,
        thickness: 1,
      ),
    );
  }
}
