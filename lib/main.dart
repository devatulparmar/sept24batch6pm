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
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
                wordSpacing: 10,
                decoration: TextDecoration.overline,
                decorationColor: Colors.white,
                textBaseline: TextBaseline.alphabetic),
          ),
        ),
        body: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Text("Hello"),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Hello"),
                ),
                Expanded(
                  flex: 0,
                  child: Text("Hello"),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 500,
              width: 100,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
