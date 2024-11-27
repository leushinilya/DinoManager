import 'package:flutter/material.dart';
import 'package:dino_manager/models/dino.dart';

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
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
            ElevatedButton(
              onPressed: () {},
              child: const Text("Сохранить изменения"),
            )
          ],
        ),
      ),
    );
  }
}
