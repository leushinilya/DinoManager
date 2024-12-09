import 'package:dino_manager/ui/components/dino_button.dart';
import 'package:dino_manager/ui/components/dino_text_field.dart';
import 'package:dino_manager/ui/theme/dino_icons.dart';
import 'package:flutter/material.dart';
import 'package:dino_manager/models/dino.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';

class DinoEditScreen extends StatelessWidget {
  const DinoEditScreen({this.dino, super.key});

  final Dino? dino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dino != null ? "Изменить динозавра" : "Новый динозавр",
        ),
        leading: IconButton(
          icon: const Icon(DinoIcons.arrow_back_16),
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
                hint: "Имя", controller: TextEditingController(text: dino?.name)
                // controller: TextEditingController(text: dino?.name),
                ),
            DinoTextField(
                hint: "Уровень",
                controller: TextEditingController(text: dino?.level.toString())
                // controller: TextEditingController(text: dino?.level.toString()),
                ),
            DinoTextField(
                hint: "Существо",
                controller: TextEditingController(text: dino?.race)),
            DinoTextField(
              hint: "Пол",
              controller: TextEditingController(text: dino?.gender.value),
            ),
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
