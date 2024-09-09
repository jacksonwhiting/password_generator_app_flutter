import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key, required this.onSliderChange});

  final void Function(double slideCharLength) onSliderChange;

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 14;

  void setCharLength(double value) {
    widget.onSliderChange(value);
    setState(() {
      _currentSliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 8,
      max: 20,
      label: _currentSliderValue.toString(),
      inactiveColor: Theme.of(context).colorScheme.surface,
      onChanged: (double value) {
        setCharLength(value);
      },
    );
  }
}
