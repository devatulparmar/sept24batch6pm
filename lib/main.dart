import 'package:batch6pm/grid_builder_screen.dart';
import 'package:batch6pm/grid_count_screen.dart';
import 'package:batch6pm/grid_extent_screen.dart';
import 'package:batch6pm/grid_list_screen.dart';
import 'package:batch6pm/home_screen.dart';
import 'package:batch6pm/image_screen.dart';
import 'package:batch6pm/list_generate.dart';
import 'package:batch6pm/list_builder_screen.dart';
import 'package:batch6pm/list_screen.dart';
import 'package:batch6pm/list_separated_screen.dart';
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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Colors.blue),
        ),
      ),
      home: const GridExtentScreen(),
      // home: const ListSeparatedScreen(),
      // home: const ListGenerate(),
    );
  }
}
