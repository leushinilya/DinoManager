import 'package:dino_manager/ui/theme/colors/palette_entity.dart';
import 'package:dino_manager/ui/theme/dimens/dimen_entity.dart';
import 'package:dino_manager/ui/theme/typography/typography_entity.dart';
import 'package:flutter/material.dart';

class DinoThemeExtension extends ThemeExtension<DinoThemeExtension> {
  const DinoThemeExtension({
    required this.palette,
    required this.dimens,
    required this.textStyles,
  });

  final Palette palette;
  final Dimens dimens;
  final TextStyles textStyles;

  @override
  ThemeExtension<DinoThemeExtension> copyWith() {
    return DinoThemeExtension(
      palette: palette,
      dimens: dimens,
      textStyles: textStyles,
    );
  }

  @override
  ThemeExtension<DinoThemeExtension> lerp(
      covariant ThemeExtension<DinoThemeExtension>? other, double t) {
    return this;
  }
}

extension DinoContextExtension on BuildContext {
  DinoThemeExtension get dinoTheme =>
      Theme.of(this).extension<DinoThemeExtension>()!;
}
