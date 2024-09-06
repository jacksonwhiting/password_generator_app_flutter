import 'package:flutter/material.dart';
import 'package:password_generator_app_flutter/character_field.dart';
import 'package:password_generator_app_flutter/cust_input_field.dart';
import 'package:password_generator_app_flutter/custom_slider_track_shape.dart';

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
        child: const Column(children: [
          CustInputField(),
          SizedBox(height: 20),
          Characterfield(),
        ]),
      ),
    );
  }
}
