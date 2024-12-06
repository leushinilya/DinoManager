import 'package:dino_manager/ui/components/dino_button.dart';
import 'package:dino_manager/ui/components/dino_text_field.dart';
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
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Имя",
              ),
              controller: TextEditingController(text: dino?.name),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Уровень",
              ),
              controller: TextEditingController(text: dino?.level.toString()),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Существо",
              ),
              controller: TextEditingController(text: dino?.race),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Пол",
              ),
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
