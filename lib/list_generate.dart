



import 'package:flutter/material.dart';

class ListGenerate extends StatefulWidget {
  const ListGenerate({super.key});

  @override
  State<ListGenerate> createState() => _ListGenerateState();
}

class _ListGenerateState extends State<ListGenerate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: ListView(
        children: List.generate(2, (int index) {
          return Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text("Item $index"),
            ),
          );
        }),
      ),
    );
  }
}
