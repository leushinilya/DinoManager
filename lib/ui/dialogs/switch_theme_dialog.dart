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
  Map<String, ThemeMode> modesMap = {
    "Темная": ThemeMode.dark,
    "Светлая": ThemeMode.light,
    "Системная": ThemeMode.system,
  };

  @override
  Widget build(BuildContext context) {
    SwitchThemeModel model = context.watch();
    return AlertDialog(
      title: const Text("Выберите тему"),
      content: DinoRadioButtonGroup(
        items: modesMap.keys.toSet(),
        callback: (modeTitle) {
          ThemeMode? themeMode = modesMap[modeTitle];
          selectedThemeMode = themeMode;
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
