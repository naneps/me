import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0061a4),
      surfaceTint: Color(0xff0061a4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff519fee),
      onPrimaryContainer: Color(0xff00345c),
      secondary: Color(0xff526600),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcdf53f),
      onSecondaryContainer: Color(0xff596e00),
      tertiary: Color(0xff6b3ec5),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff855ae0),
      onTertiaryContainer: Color(0xfffffbff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff181c21),
      onSurfaceVariant: Color(0xff404751),
      outline: Color(0xff717782),
      outlineVariant: Color(0xffc0c7d3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3136),
      inversePrimary: Color(0xff9fcaff),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001d36),
      primaryFixedDim: Color(0xff9fcaff),
      onPrimaryFixedVariant: Color(0xff00497d),
      secondaryFixed: Color(0xffcaf23c),
      onSecondaryFixed: Color(0xff171e00),
      secondaryFixedDim: Color(0xffafd519),
      onSecondaryFixedVariant: Color(0xff3d4d00),
      tertiaryFixed: Color(0xffeaddff),
      onTertiaryFixed: Color(0xff24005b),
      tertiaryFixedDim: Color(0xffd1bcff),
      onTertiaryFixedVariant: Color(0xff5623af),
      surfaceDim: Color(0xffd8dae1),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3fa),
      surfaceContainer: Color(0xffeceef5),
      surfaceContainerHigh: Color(0xffe6e8ef),
      surfaceContainerHighest: Color(0xffe0e2e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003862),
      surfaceTint: Color(0xff0061a4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff0370bc),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2e3b00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5f7600),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff44009e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7d51d8),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff0e1116),
      onSurfaceVariant: Color(0xff303740),
      outline: Color(0xff4c535d),
      outlineVariant: Color(0xff676d78),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3136),
      inversePrimary: Color(0xff9fcaff),
      primaryFixed: Color(0xff0370bc),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff005794),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5f7600),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff495c00),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7d51d8),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6436bd),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4c6cd),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f3fa),
      surfaceContainer: Color(0xffe6e8ef),
      surfaceContainerHigh: Color(0xffdbdde3),
      surfaceContainerHighest: Color(0xffcfd1d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002e51),
      surfaceTint: Color(0xff0061a4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004b81),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff253000),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3f4f00),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff380084),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5826b1),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff262d36),
      outlineVariant: Color(0xff434a53),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3136),
      inversePrimary: Color(0xff9fcaff),
      primaryFixed: Color(0xff004b81),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00345c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3f4f00),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2b3700),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5826b1),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff400095),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6b9bf),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff0f7),
      surfaceContainer: Color(0xffe0e2e9),
      surfaceContainerHigh: Color(0xffd2d4db),
      surfaceContainerHighest: Color(0xffc4c6cd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9fcaff),
      surfaceTint: Color(0xff9fcaff),
      onPrimary: Color(0xff003258),
      primaryContainer: Color(0xff519fee),
      onPrimaryContainer: Color(0xff00345c),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff293500),
      secondaryContainer: Color(0xffcaf23c),
      onSecondaryContainer: Color(0xff576c00),
      tertiary: Color(0xffd1bcff),
      onTertiary: Color(0xff3d008f),
      tertiaryContainer: Color(0xffa277ff),
      onTertiaryContainer: Color(0xff35007e),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e9),
      onSurfaceVariant: Color(0xffc0c7d3),
      outline: Color(0xff8a919c),
      outlineVariant: Color(0xff404751),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e9),
      inversePrimary: Color(0xff0061a4),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001d36),
      primaryFixedDim: Color(0xff9fcaff),
      onPrimaryFixedVariant: Color(0xff00497d),
      secondaryFixed: Color(0xffcaf23c),
      onSecondaryFixed: Color(0xff171e00),
      secondaryFixedDim: Color(0xffafd519),
      onSecondaryFixedVariant: Color(0xff3d4d00),
      tertiaryFixed: Color(0xffeaddff),
      onTertiaryFixed: Color(0xff24005b),
      tertiaryFixedDim: Color(0xffd1bcff),
      onTertiaryFixedVariant: Color(0xff5623af),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393f),
      surfaceContainerLowest: Color(0xff0b0e13),
      surfaceContainerLow: Color(0xff181c21),
      surfaceContainer: Color(0xff1c2025),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7deff),
      surfaceTint: Color(0xff9fcaff),
      onPrimary: Color(0xff002747),
      primaryContainer: Color(0xff519fee),
      onPrimaryContainer: Color(0xff000c1c),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff293500),
      secondaryContainer: Color(0xffcaf23c),
      onSecondaryContainer: Color(0xff3e4e00),
      tertiary: Color(0xffe4d6ff),
      onTertiary: Color(0xff300074),
      tertiaryContainer: Color(0xffa277ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd6dde9),
      outline: Color(0xffacb2be),
      outlineVariant: Color(0xff8a919c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e9),
      inversePrimary: Color(0xff004a7f),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001225),
      primaryFixedDim: Color(0xff9fcaff),
      onPrimaryFixedVariant: Color(0xff003862),
      secondaryFixed: Color(0xffcaf23c),
      onSecondaryFixed: Color(0xff0e1300),
      secondaryFixedDim: Color(0xffafd519),
      onSecondaryFixedVariant: Color(0xff2e3b00),
      tertiaryFixed: Color(0xffeaddff),
      onTertiaryFixed: Color(0xff180040),
      tertiaryFixedDim: Color(0xffd1bcff),
      onTertiaryFixedVariant: Color(0xff44009e),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff41454a),
      surfaceContainerLowest: Color(0xff05080c),
      surfaceContainerLow: Color(0xff1a1e23),
      surfaceContainer: Color(0xff25282d),
      surfaceContainerHigh: Color(0xff2f3338),
      surfaceContainerHighest: Color(0xff3b3e43),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe8f0ff),
      surfaceTint: Color(0xff9fcaff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff97c6ff),
      onPrimaryContainer: Color(0xff000c1b),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcaf23c),
      onSecondaryContainer: Color(0xff242e00),
      tertiary: Color(0xfff6ecff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffceb7ff),
      onTertiaryContainer: Color(0xff100031),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeaf0fd),
      outlineVariant: Color(0xffbcc3cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e9),
      inversePrimary: Color(0xff004a7f),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9fcaff),
      onPrimaryFixedVariant: Color(0xff001225),
      secondaryFixed: Color(0xffcaf23c),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffafd519),
      onSecondaryFixedVariant: Color(0xff0e1300),
      tertiaryFixed: Color(0xffeaddff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd1bcff),
      onTertiaryFixedVariant: Color(0xff180040),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff4d5056),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c2025),
      surfaceContainer: Color(0xff2d3136),
      surfaceContainerHigh: Color(0xff383c41),
      surfaceContainerHighest: Color(0xff44474c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
