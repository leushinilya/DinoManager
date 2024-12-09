import 'package:dino_manager/models/dino.dart';
import 'package:dino_manager/ui/theme/icons/dino_icons.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class DinoCard extends StatelessWidget {
  final Dino dino;
  final bool primary;
  final Function(Dino) onPressed;

  const DinoCard({
    required this.dino,
    required this.primary,
    required this.onPressed,
    super.key,
  });

  Icon _getGenderIcon(BuildContext context) {
    var palette = context.dinoTheme.palette;
    switch (dino.gender) {
      case Gender.male:
        return Icon(
          DinoIcons.male,
          size: 24,
          color: palette.iconColors.success,
        );
      case Gender.female:
        return Icon(
          DinoIcons.female,
          size: 24,
          color: palette.iconColors.error,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.dinoTheme;

    return Container(
      color: primary
          ? theme.palette.surfaceColors.primary
          : theme.palette.surfaceColors.secondary,
      child: InkWell(
        onTap: () {
          onPressed(dino);
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(theme.dimens.spacings.spacingL),
              child: _getGenderIcon(context),
            ),
            Text(
              dino.name,
              style: theme.textStyles.heading.h3.copyWith(
                color: theme.palette.textColors.primary,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(theme.dimens.spacings.spacingL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    dino.race,
                    style: theme.textStyles.heading.h3.copyWith(
                      color: theme.palette.textColors.primary,
                    ),
                  ),
                  Text(
                    "LVL: ${dino.level.toString()}",
                    style: theme.textStyles.body.b2.copyWith(
                      color: theme.palette.textColors.success,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
