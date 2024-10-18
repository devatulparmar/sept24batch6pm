

import 'package:flutter/material.dart';

class GridListScreen extends StatefulWidget {
  const GridListScreen({super.key});

  @override
  State<GridListScreen> createState() => _GridListScreenState();
}

class _GridListScreenState extends State<GridListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List Screen'),
      ),
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        children: [
          Container(
            color: Colors.red,
            height: 300,
            width: 500,
          ),
          Container(
            color: Colors.green,
            height: 300,
            width: 500,
          ),
          Container(
            color: Colors.blue,
            height: 300,
            width: 500,
          ),
          Container(
            color: Colors.pink,
            height: 300,
            width: 500,
          ),
        ],
      ),
    );
  }
}
