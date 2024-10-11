import 'package:batch6pm/home_screen.dart';
import 'package:batch6pm/image_screen.dart';
import 'package:batch6pm/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
            backgroundColor: Colors.blue
        ),
      ),
      home: const MyImageScreen(),
    );
  }
}
