import 'package:flutter/material.dart';

import 'package:password_generator_app_flutter/text_field.dart';
import 'package:password_generator_app_flutter/slider.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 59, 181, 146),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFFA4FFAF),
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
        child: Column(
          children: [
            const CustInputField(),
            const SizedBox(height: 20),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(color: Color(0xFF24232C)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Character Length',
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.w700)),
                        const Spacer(),
                        Text(
                          '10',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.fontSize,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SliderExample(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
