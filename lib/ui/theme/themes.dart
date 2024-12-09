import 'package:dino_manager/ui/theme/colors/palettes.dart';
import 'package:dino_manager/ui/theme/dimens/dimens.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:dino_manager/ui/theme/typography/tipography.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(bool dark) {
  var palette = dark ? darkColorsPalette : lightColorsPalette;
  var extension = DinoThemeExtension(
    palette: palette,
    dimens: defaultDimens,
    textStyles: textStyles,
  );
  return ThemeData(
    extensions: <ThemeExtension<dynamic>>[extension],
    appBarTheme: AppBarTheme(
      backgroundColor: palette.surfaceColors.primary,
      centerTitle: true,
      titleTextStyle: extension.textStyles.heading.h2.copyWith(
        color: palette.textColors.primary,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: palette.surfaceColors.tertiary,
    ),
    scaffoldBackgroundColor: palette.surfaceColors.secondary,
    iconTheme: IconThemeData(
      color: palette.iconColors.primary,
    ),
  );
}
