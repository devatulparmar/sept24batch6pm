import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 300,
            child: Theme(
              data: ThemeData(
                // scrollbarTheme: ScrollbarThemeData(
                //   thumbColor: WidgetStateProperty.all(Colors.blue),
                // ),
              ),
              child: Scrollbar(
                thumbVisibility: true,
                thickness: 20,
                interactive: true,
                radius: const Radius.circular(5),
                trackVisibility: true,
                scrollbarOrientation: ScrollbarOrientation.bottom,
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  physics: const AlwaysScrollableScrollPhysics(),
                  // reverse: true,
                  scrollDirection: Axis.horizontal,
                  // physics: const FixedExtentScrollPhysics(),
                  // physics: const PageScrollPhysics(),
                  // physics: const ClampingScrollPhysics(),
                  // physics: const BouncingScrollPhysics(),
                  // physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      color: Colors.red,
                      height: 300,
                      width: 500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Colors.green,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.orange,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.pink,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 300,
                      width: 500,
                    ),
                    Container(
                      color: Colors.black,
                      height: 300,
                      width: 500,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
