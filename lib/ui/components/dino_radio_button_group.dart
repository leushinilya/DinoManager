import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class DinoRadioButtonGroup extends StatefulWidget {
  const DinoRadioButtonGroup({
    super.key,
    required this.items,
    required this.callback,
  });

  final Set<String> items;
  final Function(int) callback;

  @override
  State<DinoRadioButtonGroup> createState() => _DinoRadioButtonGroupState();

  void selectItem(String item) {}
}

class _DinoRadioButtonGroupState extends State<DinoRadioButtonGroup> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    var theme = context.dinoTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: widget.items
          .map(
            (item) => ListTile(
              contentPadding: EdgeInsets.zero,
              minLeadingWidth: 0,
              title: Text(
                item,
                style: theme.textStyles.body.b1
                    .copyWith(color: theme.palette.textColors.primary),
              ),
              leading: Radio<String>(
                value: item,
                groupValue: selectedItem,
                onChanged: (String? value) {
                  setState(() {
                    selectedItem = value;
                  });
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
