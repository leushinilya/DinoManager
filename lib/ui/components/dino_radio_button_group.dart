import 'package:collection/collection.dart';
import 'package:dino_manager/ui/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class DinoRadioButtonGroup extends StatefulWidget {
  const DinoRadioButtonGroup({
    super.key,
    required this.items,
    this.initialItemIndex,
    required this.callback,
  });

  final List<String> items;
  final int? initialItemIndex;
  final Function(int) callback;

  @override
  State<DinoRadioButtonGroup> createState() => _DinoRadioButtonGroupState();
}

class _DinoRadioButtonGroupState extends State<DinoRadioButtonGroup> {
  int? selectedItemIndex;

  @override
  void initState() {
    selectedItemIndex = widget.initialItemIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.dinoTheme;
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.items
            .mapIndexed(
              (index, item) => ListTile(
                contentPadding: EdgeInsets.zero,
                minLeadingWidth: 0,
                title: Text(
                  item,
                  style: theme.textStyles.body.b1
                      .copyWith(color: theme.palette.textColors.primary),
                ),
                leading: Radio<int>(
                  value: index,
                  groupValue: selectedItemIndex,
                  onChanged: (_) {
                    setState(() {
                      selectedItemIndex = index;
                      widget.callback(index);
                    });
                  },
                ),
                onTap: (){
                  setState(() {
                    selectedItemIndex = index;
                    widget.callback(index);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
