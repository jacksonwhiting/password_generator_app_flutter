import 'package:flutter/material.dart';

class GenerateButton extends StatelessWidget {
  final VoidCallback onGenerate;

  const GenerateButton({super.key, required this.onGenerate});

  /// Returns a button which generates a new password when pressed.
  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
        onPressed: onGenerate,
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
