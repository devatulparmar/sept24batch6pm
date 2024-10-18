import 'package:flutter/material.dart';

class GridBuilderScreen extends StatefulWidget {
  const GridBuilderScreen({super.key});

  @override
  State<GridBuilderScreen> createState() => _GridBuilderScreenState();
}

class _GridBuilderScreenState extends State<GridBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Builder Screen'),
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent,
            height: 300,
            width: 500,
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
