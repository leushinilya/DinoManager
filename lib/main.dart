import 'package:dino_manager/dino_card.dart';
import 'package:flutter/material.dart';
import 'package:dino_manager/custom_icons.dart';
import 'dino_repo.dart';

void main() => runApp(const MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DinoManager",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "DinoManager",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (_, index) => DinoCard(items[index]),
          padding: const EdgeInsets.all(16.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // items.add("Dino ${items.length}");
          },
          backgroundColor: Colors.grey[900],
          child: const Icon(
            CustomIcons.add,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
