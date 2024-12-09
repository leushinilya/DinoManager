import 'package:dino_manager/ui/components/dino_card.dart';
import 'package:dino_manager/ui/navigation/create_route.dart';
import 'package:dino_manager/ui/screens/dino_edit_screen.dart';
import 'package:dino_manager/ui/theme/dino_icons.dart';
import 'package:flutter/material.dart';
import 'package:dino_manager/data/dino_repo.dart';

class DinoListScreen extends StatelessWidget {
  const DinoListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ваши динозавры",
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (_, index) => DinoCard(
          dino: items[index],
          onPressed: (dino) => {
            Navigator.of(context).push(
              createRoute(
                DinoEditScreen(
                  dino: dino,
                ),
              ),
            )
          },
          primary: true,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              createRoute(const DinoEditScreen()),
            );
          },
          child: const Icon(
            DinoIcons.delete_16,
            color: Colors.black,
          )),
    );
  }
}
