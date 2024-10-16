

import 'package:flutter/material.dart';

class ListSeparatedScreen extends StatefulWidget {
  const ListSeparatedScreen({super.key});

  @override
  State<ListSeparatedScreen> createState() => _ListSeparatedScreenState();
}

class _ListSeparatedScreenState extends State<ListSeparatedScreen> {
  int value = 10;
  String text = 'Hello';
  double pointValue = 10.1;
  List listObject = [1, 2, 3, 4, 5];
  List<String> listString = ["Vadodara", "Ahmedabad", "Surat", "Rajkot"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: listString.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 5,
            color: Colors.black,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            child: Center(
              child: Text("Item ${listString[index]}"),
            ),
          );
        },
      ),
    );
  }
}

