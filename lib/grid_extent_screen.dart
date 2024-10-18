import 'package:flutter/material.dart';

class GridExtentScreen extends StatefulWidget {
  const GridExtentScreen({super.key});

  @override
  State<GridExtentScreen> createState() => _GridExtentScreenState();
}

class _GridExtentScreenState extends State<GridExtentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Extent Screen'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.5,
        children: List.generate(5, (int index) {
          return Image.network(
            "https://4.img-dpreview.com/files/p/E~TS590x0~articles/3925134721/0266554465.jpeg",
            fit: BoxFit.fitHeight,
          );
        }),
      ),
    );
  }
}
