
import 'package:flutter/material.dart';

class GridCountScreen extends StatefulWidget {
  const GridCountScreen({super.key});

  @override
  State<GridCountScreen> createState() => _GridCountScreenState();
}

class _GridCountScreenState extends State<GridCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Count Screen'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
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
