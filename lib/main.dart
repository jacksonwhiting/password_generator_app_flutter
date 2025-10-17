import 'dart:math';

import 'package:flutter/material.dart';
import 'package:password_generator_app_flutter/button_generate.dart';
import 'package:password_generator_app_flutter/character_length_field.dart';
import 'package:password_generator_app_flutter/cust_input_field.dart';
import 'package:password_generator_app_flutter/custom_slider_track_shape.dart';
import 'package:password_generator_app_flutter/checkbox_field.dart';
import 'package:password_generator_app_flutter/strength_meter.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 59, 181, 146),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 1, 224, 50),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        sliderTheme: ThemeData().sliderTheme.copyWith(
              trackShape: CustomTrackShape(),
            ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      title: 'Password Generator app',
      themeMode: ThemeMode.dark, // default
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _passwordController = TextEditingController();
  int _characterLength = 14;
  bool _includeUppercase = true;
  bool _includeLowercase = true;
  bool _includeNumbers = true;
  bool _includeSymbols = true;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _updateCharacterLength(int charLength) {
    setState(() {
      _characterLength = charLength;
    });
  }

  void _toggleUppercase(bool value) {
    setState(() {
      _includeUppercase = value;
    });
  }

  void _toggleLowercase(bool value) {
    setState(() {
      _includeLowercase = value;
    });
  }

  void _toggleNumbers(bool value) {
    setState(() {
      _includeNumbers = value;
    });
  }

  void _toggleSymbols(bool value) {
    setState(() {
      _includeSymbols = value;
    });
  }

  void _generatePassword() {
    final buffer = StringBuffer();
    var allowedCharacters = '';

    if (_includeUppercase) {
      allowedCharacters += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    }
    if (_includeLowercase) {
      allowedCharacters += 'abcdefghijklmnopqrstuvwxyz';
    }
    if (_includeNumbers) {
      allowedCharacters += '0123456789';
    }
    if (_includeSymbols) {
      allowedCharacters += r'!@#$%^&*()-_=+[]{}|;:,.<>?';
    }

    if (allowedCharacters.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Select at least one character type to generate.'),
        ),
      );
      return;
    }

    final random = Random.secure();

    for (var i = 0; i < _characterLength; i++) {
      final index = random.nextInt(allowedCharacters.length);
      buffer.write(allowedCharacters[index]);
    }

    setState(() {
      _passwordController.text = buffer.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Generator',
            style: TextStyle(color: Colors.blueGrey[500])),
      ),
      body: Container(
        margin: const EdgeInsetsDirectional.fromSTEB(
            0, 20, 0, 0), // left, top, end, bottom
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 10), // horizontal, vertical
        child: Column(children: [
          CustInputField(controller: _passwordController),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF24232C),
            ),
            child: Column(
              children: [
                CharacterLengthField(
                  passCharacterLength: _updateCharacterLength,
                ),
                CheckboxListTileEx(
                  title: 'Include Uppercase Letters',
                  handleCheckboxChange: _toggleUppercase,
                ),
                CheckboxListTileEx(
                  title: 'Include Lowercase Letters',
                  handleCheckboxChange: _toggleLowercase,
                ),
                CheckboxListTileEx(
                  title: 'Include Numbers',
                  handleCheckboxChange: _toggleNumbers,
                ),
                CheckboxListTileEx(
                  title: 'Include Symbols',
                  handleCheckboxChange: _toggleSymbols,
                ),
                const SizedBox(height: 20),
                const StrengthMeter(),
                const SizedBox(height: 20),
                GenerateButton(onGenerate: _generatePassword),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
