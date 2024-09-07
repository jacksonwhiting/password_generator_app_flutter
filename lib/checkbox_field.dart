import 'package:flutter/material.dart';

class CheckboxListTileEx extends StatefulWidget {
  final String title;
  final void Function(bool value) handleCheckboxChange;

  const CheckboxListTileEx({
    super.key,
    required this.title,
    required this.handleCheckboxChange,
  });

  @override
  State<CheckboxListTileEx> createState() => _CheckboxListTileState();
}

class _CheckboxListTileState extends State<CheckboxListTileEx> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      origin: const Offset(105, 0),
      alignment: Alignment.centerLeft,
      child: Material(
        type: MaterialType.transparency,
        color: const Color(0xFF24232C),
        child: CheckboxListTile(
          title: Text(widget.title,
              style: Theme.of(context).textTheme.titleMedium),
          value: isChecked,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: VisualDensity.compact,
          onChanged: (bool? value) {
            setState(() {
              isChecked = !isChecked;
            });
            widget.handleCheckboxChange(isChecked);
          },
        ),
      ),
    );
  }
}
