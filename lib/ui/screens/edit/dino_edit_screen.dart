import 'package:dino_manager/ui/components/dino_button.dart';
import 'package:dino_manager/ui/components/dino_text_field.dart';
import 'package:dino_manager/ui/theme/icons/dino_icons.dart';
import 'package:flutter/material.dart';
import 'package:dino_manager/data/models/dino.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';

class DinoEditScreen extends StatelessWidget {
  const DinoEditScreen({this.dino, super.key});

  final Dino? dino;

  @override
  Widget build(BuildContext context) {
    var theme = context.dinoTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dino != null ? "Изменить динозавра" : "Новый динозавр",
        ),
        leading: IconButton(
          icon: const Icon(DinoIcons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(context.dinoTheme.dimens.spacings.spacingL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DinoTextField(
              hint: "Имя",
              controller: TextEditingController(text: dino?.name),
            ),
            SizedBox(
              height: theme.dimens.spacings.spacingL,
            ),
            DinoTextField(
              hint: "Уровень",
              controller: TextEditingController(text: dino?.level.toString()),
            ),
            SizedBox(
              height: theme.dimens.spacings.spacingL,
            ),
            DinoTextField(
              hint: "Существо",
              controller: TextEditingController(text: dino?.race),
            ),
            SizedBox(
              height: theme.dimens.spacings.spacingL,
            ),
            DinoTextField(
              hint: "Пол",
              controller: TextEditingController(text: dino?.gender.value),
            ),
            const Spacer(),
            DinoButton(
              onPressed: () {},
              text: "Сохранить изменения",
            )
          ],
        ),
      ),
    );
  }
}
