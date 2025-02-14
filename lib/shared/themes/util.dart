import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  BuildContext context,
  String bodyFontString,
  String displayFontString,
) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  TextTheme bodyTextTheme = GoogleFonts.firaCodeTextTheme(baseTextTheme);

  TextTheme displayTextTheme = GoogleFonts.firaCodeTextTheme(baseTextTheme);

  return baseTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(fontSize: 18, height: 1.6),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(fontSize: 16, height: 1.5),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(fontSize: 14, height: 1.4),

    labelLarge: bodyTextTheme.labelLarge?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),

    titleLarge: displayTextTheme.titleLarge?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: displayTextTheme.titleMedium?.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: displayTextTheme.titleSmall?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),

    displayLarge: displayTextTheme.displayLarge?.copyWith(
      fontSize: 48,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: displayTextTheme.displayMedium?.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: displayTextTheme.displaySmall?.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),

    headlineLarge: displayTextTheme.headlineLarge?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: displayTextTheme.headlineMedium?.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: displayTextTheme.headlineSmall?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
  );
}
