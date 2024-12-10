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
      iconTheme: IconThemeData(
        color: palette.iconColors.primary,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: palette.surfaceColors.tertiary,
      foregroundColor: palette.iconColors.primary,
    ),
    scaffoldBackgroundColor: palette.surfaceColors.onPrimary,
    iconTheme: IconThemeData(
      color: palette.iconColors.primary,
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: extension.textStyles.heading.h2.copyWith(
        color: palette.textColors.primary,
      ),
      backgroundColor: extension.palette.surfaceColors.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: extension.textStyles.body.b3,
        foregroundColor: extension.palette.textColors.primary,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStatePropertyAll(extension.palette.iconColors.accent),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: extension.palette.iconColors.accent,
      selectionColor: extension.palette.iconColors.accent.withAlpha(100),
      selectionHandleColor: extension.palette.iconColors.accent,
    ),
  );
}
