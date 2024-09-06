import 'package:flutter/material.dart';
import 'package:password_generator_app_flutter/slider.dart';

class Characterfield extends StatefulWidget {
  const Characterfield({super.key});

  @override
  State<Characterfield> createState() => _CharacterfieldState();
}

class _CharacterfieldState extends State<Characterfield> {
  int charLength = 10;

  void setCharLength(double value) {
    setState(() {
      charLength = value.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(color: Color(0xFF24232C)),
        child: Column(
          children: [
            Row(
              children: [
                Text('Character Length',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge?.fontSize,
                        fontWeight: FontWeight.w700)),
                const Spacer(),
                Text(
                  charLength.toString(),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize:
                          Theme.of(context).textTheme.headlineMedium?.fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SliderExample(onSliderChange: setCharLength),
          ],
        ));
  }
}
