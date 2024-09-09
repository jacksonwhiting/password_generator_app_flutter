import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.only(top: 15),
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
        Container(
            width: 10,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.amber[300],
            )),
        const SizedBox(
          width: 8,
        ),
        Container(
            width: 10,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.amber[300],
            )),
        const SizedBox(
          width: 8,
        ),
        Container(
            width: 10,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.amber[300],
            )),
        const SizedBox(
          width: 8,
        ),
        Container(
            width: 10,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.amber[300],
            )),
        const SizedBox(
          width: 8,
        ),
      ]),
      
  }
}
