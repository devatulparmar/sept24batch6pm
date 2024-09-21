import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 20,
          leadingWidth: 100,
          leading: const Text(
            "This is AppBar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          title: const Text(
            "This is AppBar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
            const Icon(
              Icons.access_alarms_rounded,
              color: Colors.white,
              size: 20,
            ),
            const Text(
              "This is AppBar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
