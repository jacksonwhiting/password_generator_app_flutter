import 'package:flutter/material.dart';
import 'package:password_generator_app_flutter/slider.dart';

class CharacterLengthField extends StatefulWidget {
  final void Function(int charLength) passCharacterLength;

  const CharacterLengthField({
    super.key,
    required this.passCharacterLength,
  });

  @override
  State<CharacterLengthField> createState() => _CharacterFieldState();
}

class _CharacterFieldState extends State<CharacterLengthField> {
  int charLength = 10;

  void setCharLength(double value) {
    setState(() {
      charLength = value.round();
    });
    widget.passCharacterLength(charLength);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Character Length',
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                    fontWeight: FontWeight.w700)),
            const Spacer(),
            Text(
              charLength.toString(),
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SliderExample(onSliderChange: setCharLength),
      ],
    );
  }
}
