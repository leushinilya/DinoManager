import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class DinoButton extends StatelessWidget {
  const DinoButton({required this.text, required this.onPressed, super.key});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    DinoThemeExtension theme = context.dinoTheme;
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(theme.dimens.corners.cornerExtraLarge),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(theme.palette.surfaceColors.tertiary)
        ),
        child: Padding(
          padding: EdgeInsets.all(theme.dimens.spacings.spacingL),
          child: Text(
            text,
            style: theme.textStyles.body.b2.copyWith(
              color: theme.palette.textColors.primary
            ),
          ),
        ));
  }
}
