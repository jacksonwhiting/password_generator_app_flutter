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

int characterLength = 14;
bool includeUppercase = true;
bool includeLowercase = true;
bool includeNumbers = true;
bool includeSymbols = true;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
          const CustInputField(),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF24232C),
            ),
            child: Column(
              children: [
                CharacterLengthField(
                  passCharacterLength: (charLength) =>
                      characterLength = charLength,
                ),
                CheckboxListTileEx(
                  title: 'Include Uppercase Letters',
                  handleCheckboxChange: (value) => includeUppercase = value,
                ),
                CheckboxListTileEx(
                  title: 'Include Lowercase Letters',
                  handleCheckboxChange: (value) => includeLowercase = value,
                ),
                CheckboxListTileEx(
                  title: 'Include Numbers',
                  handleCheckboxChange: (value) => includeNumbers = value,
                ),
                CheckboxListTileEx(
                  title: 'Include Symbols',
                  handleCheckboxChange: (value) => includeUppercase = value,
                ),
                const SizedBox(height: 20),
                const StrengthMeter(),
                const SizedBox(height: 20),
                const GenerateButton(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
