import 'package:flutter/material.dart';
import 'package:password_generator_app_flutter/strength_container.dart';

class StrengthMeter extends StatefulWidget {
  const StrengthMeter({super.key});

  @override
  State<StrengthMeter> createState() => _StrengthMeterState();
}

class _StrengthMeterState extends State<StrengthMeter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(children: [
        Text(
          'STRENGTH',
          style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
        ),
        const Spacer(),
        Text(
          'MEDIUM',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
        ),
        const SizedBox(
          width: 15,
        ),
        StrengthContainer(color: Colors.amber[300]),
        const SizedBox(
          width: 8,
        ),
        StrengthContainer(color: Colors.amber[300]),
        const SizedBox(
          width: 8,
        ),
        StrengthContainer(color: Colors.amber[300]),
        const SizedBox(
          width: 8,
        ),
        StrengthContainer(color: Colors.amber[300]),
        const SizedBox(
          width: 8,
        ),
      ]),
    );
  }
}
