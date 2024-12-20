import 'package:dino_manager/ui/components/dino_radio_button_group.dart';
import 'package:dino_manager/ui/dialogs/switch_theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchThemeDialog extends StatefulWidget {
  const SwitchThemeDialog({super.key});

  @override
  State<SwitchThemeDialog> createState() => _SwitchThemeDialogState();
}

class _SwitchThemeDialogState extends State<SwitchThemeDialog> {
  ThemeMode? selectedThemeMode;

  @override
  Widget build(BuildContext context) {
    SwitchThemeModel model = context.read();
    return AlertDialog(
      title: const Text("Выберите тему"),
      content: DinoRadioButtonGroup(
        items: ThemeMode.values
            .map((mode) => switch (mode) {
                  ThemeMode.system => "Системная",
                  ThemeMode.light => "Светлая",
                  ThemeMode.dark => "Темная",
                })
            .toList(),
        initialItemIndex: ThemeMode.values.toList().indexOf(model.mode),
        callback: (index) {
          selectedThemeMode = ThemeMode.values[index];
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            model.mode = selectedThemeMode ?? ThemeMode.system;
            Navigator.of(context).pop();
          },
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
