import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dino_manager/custom_icons.dart';

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
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: SvgPicture.asset("assets/images/atom.svg"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
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
