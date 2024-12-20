import 'package:dino_manager/dino_app.dart';
import 'package:dino_manager/ui/dialogs/switch_theme_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<SwitchThemeModel>(
            create: (context) => SwitchThemeModel(),
          ),
        ],
        child: const DinoApp(),
      ),
    );
