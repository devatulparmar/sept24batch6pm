import 'package:flutter/material.dart';

class ListBuilderScreen extends StatefulWidget {
  const ListBuilderScreen({super.key});

  @override
  State<ListBuilderScreen> createState() => _ListBuilderScreenState();
}

class _ListBuilderScreenState extends State<ListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text("Item $index"),
            ),
          );
        },
      ),
    );
  }
}

