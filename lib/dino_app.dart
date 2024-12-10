import 'package:dino_manager/ui/screens/dino_list_screen.dart';
import 'package:dino_manager/ui/theme/themes.dart';
import 'package:flutter/material.dart';

class DinoApp extends StatefulWidget {
  const DinoApp({super.key});

  @override
  State<DinoApp> createState() => _DinoAppState();
}

class _DinoAppState extends State<DinoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      theme: getTheme(false),
      darkTheme: getTheme(true),
      themeMode: ThemeMode.system,
      home: const DinoListScreen(),
    );
  }
}
