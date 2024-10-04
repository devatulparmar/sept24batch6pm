import 'dart:ui';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'This is an Appbar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.5,
              fontWeight: FontWeight.normal,
              letterSpacing: 2,
              fontStyle: FontStyle.normal,
              wordSpacing: 5,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              textBaseline: TextBaseline.ideographic
            ),
          ),
        ),
        body: const Text(
          'HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello',
          style: TextStyle(
            color: Colors.green,
            fontSize: 20.5,
            fontWeight: FontWeight.normal,
            letterSpacing: 2,
            fontStyle: FontStyle.normal,
            wordSpacing: 5,
            decoration: TextDecoration.underline,
            decorationColor: Colors.green,
            textBaseline: TextBaseline.alphabetic,
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}
