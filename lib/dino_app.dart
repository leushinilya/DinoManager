import 'package:dino_manager/ui/screens/dino_list_screen.dart';
import 'package:flutter/material.dart';

class DinoApp extends StatelessWidget {
  const DinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      theme: ThemeData(

      ),
      home: const DinoListScreen(),
    );
  }
}
