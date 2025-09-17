import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1F2937); // Dark gray for text
  static const Color secondary = Color(0xFF6B7280); // Light gray for subtitles
  static const Color accent = Color(0xFFFF5C00); // Orange for selected states
  static const Color background = Color(0xFFFAFAFA); // Light background
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color searchBackground = Color(
    0xFFF3F4F6,
  ); // Light gray for search
  static const Color borderColor = Color(0xFFE5E7EB); // Border color
  static const Color gradeBadge = Color(0xFFFF5C00); // Orange for grade badge
  static const Color tabIndicator = Color(
    0xFFFF5C00,
  ); // Orange for tab indicator
}

class AppTextStyles {
  static const String fontFamily = 'Inter';

  static const TextStyle heading1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  static const TextStyle tabSelected = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.accent,
  );

  static const TextStyle tabUnselected = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  static const TextStyle cardTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle cardSubtitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  static const TextStyle cardAuthor = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );

  static const TextStyle gradeBadge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle searchHint = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );
}
