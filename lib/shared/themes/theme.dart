import "package:flutter/material.dart";

class ColorFamily {
  final Color color;

  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });
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

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  List<ExtendedColor> get extendedColors => [];

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        backgroundColor: colorScheme.surface,
        shape: const CircleBorder(),
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
        minimumSize: const Size(30, 30),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 5),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      fillColor: colorScheme.surfaceContainerHighest,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15),
      ),
      hintStyle: TextStyle(color: colorScheme.onSurfaceVariant, fontSize: 14),
    ),
    dividerColor: colorScheme.outlineVariant,
    scaffoldBackgroundColor: colorScheme.onSurface,
    canvasColor: colorScheme.surface,
  );

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromARGB(255, 221, 229, 255),
      surfaceTint: Color(0xff9fcaff),
      onPrimary: Color.fromARGB(255, 8, 11, 22),
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
      surfaceContainer: Color.fromARGB(255, 253, 249, 249),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 8, 11, 22),
      surfaceTint: Color(0xff0061a4),
      onPrimary: Color.fromARGB(255, 221, 229, 255),
      primaryContainer: Color(0xff519fee),
      onPrimaryContainer: Color(0xff00345c),
      secondary: Color.fromARGB(255, 74, 102, 203),
      onSecondary: Color.fromARGB(255, 28, 33, 50),
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
}
