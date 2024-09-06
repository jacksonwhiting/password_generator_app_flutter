import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustInputField extends StatefulWidget {
  const CustInputField({super.key});

  @override
  State<CustInputField> createState() => _CustInputFieldState();
}

class _CustInputFieldState extends State<CustInputField> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose;
  }

  void copyText() {
    final text = controller.text;
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Copied to Clipboard')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      decoration: InputDecoration(
          fillColor: const Color(0xFF24232C),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: IconButton(
                onPressed: copyText,
                icon: Icon(Icons.copy,
                    color: Theme.of(context).colorScheme.primary)),
          )),
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
