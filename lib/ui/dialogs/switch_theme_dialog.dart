import 'package:dino_manager/ui/components/dino_radio_button_group.dart';
import 'package:flutter/material.dart';

class SwitchThemeDialog extends StatelessWidget {
  const SwitchThemeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Выберите тему"),
      content: DinoRadioButtonGroup(
        items: {"Темная", "Светлая", "Системная"},
        callback: (index) => {},
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Применить"),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Отмена"),
        ),
      ],
    );
  }
}
