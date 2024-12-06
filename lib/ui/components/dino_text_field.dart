import 'package:flutter/material.dart';

class DinoTextField extends StatefulWidget {
  const DinoTextField({super.key});

  @override
  State<DinoTextField> createState() => _DinoTextFieldState();
}

class _DinoTextFieldState extends State<DinoTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(border: null).copyWith(),
    );
  }
}