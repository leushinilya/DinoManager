import 'package:flutter/material.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';

class DinoTextField extends StatefulWidget {
  const DinoTextField({
    super.key,
    this.hint,
    this.controller,
  });

  final String? hint;
  final TextEditingController? controller;

  @override
  State<DinoTextField> createState() => _DinoTextFieldState();
}

class _DinoTextFieldState extends State<DinoTextField> {
  @override
  Widget build(BuildContext context) {
    var theme = context.dinoTheme;
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(theme.dimens.corners.cornerMedium))),
          hintText: widget.hint,
          hintStyle: theme.textStyles.body.b1
              .copyWith(color: theme.palette.textColors.secondary),
          fillColor: theme.palette.surfaceColors.secondary,
          filled: true),
      style: theme.textStyles.body.b1
          .copyWith(color: theme.palette.textColors.primary),
      controller: widget.controller,
    );
  }
}
