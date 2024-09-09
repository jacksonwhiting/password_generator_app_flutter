import 'package:flutter/material.dart';

class StrengthContainer extends StatelessWidget {
  final Color? color;
  const StrengthContainer({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 10,
        height: 30,
        decoration: BoxDecoration(
          color: color,
        ));
  }
}
