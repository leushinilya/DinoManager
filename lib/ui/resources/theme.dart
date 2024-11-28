import 'package:dino_manager/ui/resources/colors/palette.dart';
import 'package:flutter/material.dart';

class DinoThemeExtension extends ThemeExtension<DinoThemeExtension> {

  const DinoThemeExtension({
    required this.palette,
  });

  final Palette palette;

  @override
  ThemeExtension<DinoThemeExtension> copyWith() {
    return DinoThemeExtension(palette: palette);
  }

  @override
  ThemeExtension<DinoThemeExtension> lerp(
      covariant ThemeExtension<DinoThemeExtension>? other, double t) {
    return this;
  }

}
