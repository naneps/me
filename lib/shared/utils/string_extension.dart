import 'dart:ui';

extension HexColor on String {
  Color toColor() {
    String hex = replaceFirst("#", ""); // Hilangkan #
    if (hex.length == 6) hex = "FF$hex"; // Tambah alpha kalau cuma 6 digit
    return Color(int.parse(hex, radix: 16));
  }
}
