import 'package:dino_manager/ui/resources/colors/palettes.dart';
import 'package:dino_manager/ui/resources/theme.dart';
import 'package:dino_manager/ui/screens/dino_list_screen.dart';
import 'package:flutter/material.dart';

class DinoApp extends StatelessWidget {
  const DinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      theme: ThemeData.light().copyWith(extensions: <ThemeExtension<dynamic>>[
        DinoThemeExtension(palette: lightColorsPalette)
      ]),
      darkTheme: ThemeData.light().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            DinoThemeExtension(palette: darkColorsPalette)
          ]),
      home: const DinoListScreen(),
    );
  }
}
