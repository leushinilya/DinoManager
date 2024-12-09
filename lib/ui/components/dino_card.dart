import 'package:dino_manager/models/dino.dart';
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

  @override
  Widget build(BuildContext context) {
    final theme = context.dinoTheme;

    TextStyle textStyle =
        const TextStyle(color: Colors.black, overflow: TextOverflow.ellipsis);

    return InkWell(
      onTap: () {
        onPressed(dino);
      },
      child: Card(
        elevation: 10,
        color: theme.palette.surfaceColors.primary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Имя: ${dino.name}", style: textStyle),
                  Text("Уровень: ${dino.level.toString()}", style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Существо: ${dino.race}", style: textStyle),
                  Text("Пол: ${dino.gender.value}", style: textStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
