import 'package:flutter/material.dart';

class CustInputField extends StatelessWidget {
  const CustInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        fillColor: Color(0xFF24232C),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        border: UnderlineInputBorder(borderSide: BorderSide.none),
      ),
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
