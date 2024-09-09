import 'package:flutter/material.dart';

class GenerateButton extends StatefulWidget {
  const GenerateButton({super.key});

  @override
  State<GenerateButton> createState() => _GenerateButtonState();
}

class _GenerateButtonState extends State<GenerateButton> {
  @override

  /// Returns a button which generates a new password when pressed.
  Widget build(BuildContext context) {
    return FilledButton.icon(
        onPressed: () {},
        label: Text('Generate',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
              fontWeight: FontWeight.bold,
            )),
        iconAlignment: IconAlignment.end,
        style: const ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
            shape: WidgetStatePropertyAll(ContinuousRectangleBorder())),
        icon: const Icon(Icons.arrow_forward));
  }
}
