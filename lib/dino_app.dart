import 'package:dino_manager/ui/theme/colors/palettes.dart';
import 'package:dino_manager/ui/theme/dimens/dimens.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:dino_manager/ui/screens/dino_list_screen.dart';
import 'package:dino_manager/ui/theme/typography/tipography.dart';
import 'package:flutter/material.dart';

class DinoApp extends StatelessWidget {
  const DinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      theme: ThemeData.dark().copyWith(extensions: <ThemeExtension<dynamic>>[
        DinoThemeExtension(
          palette: lightColorsPalette,
          dimens: defaultDimens,
          textStyles: textStyles,
        )
      ]),
      darkTheme:
          ThemeData.light().copyWith(extensions: <ThemeExtension<dynamic>>[
        DinoThemeExtension(
          palette: darkColorsPalette,
          dimens: defaultDimens,
          textStyles: textStyles,
        )
      ]),
      home: const DinoListScreen(),
    );
  }
}
