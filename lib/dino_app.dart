import 'package:dino_manager/ui/screens/dino_list_screen.dart';
import 'package:dino_manager/ui/theme/themes.dart';
import 'package:flutter/material.dart';

class DinoApp extends StatelessWidget {
  const DinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      theme: getTheme(false),
      darkTheme: getTheme(true),
      home: const DinoListScreen(),
    );
  }
}
