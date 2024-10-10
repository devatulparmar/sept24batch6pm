import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int count = 0;

  void _myClickFunction(){
    debugPrint('clicked');
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(),
          Text(
            'Clicked $count times',
            style: const TextStyle(fontSize: 35),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _myClickFunction,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
