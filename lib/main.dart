import 'package:batch6pm/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'This is an Appbar',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.5,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
              fontStyle: FontStyle.normal,
              wordSpacing: 10,
              decoration: TextDecoration.overline,
              decorationColor: Colors.white,
              textBaseline: TextBaseline.alphabetic),
        ),
      ),
      body: const Row(
        children: [
          Expanded(
            flex: 1,
            child: Text('Hello'),
          ),
          Expanded(
            flex: 1,
            child: Text('Hi'),
          ),
          Expanded(
            flex: 0,
            child: Text('bye'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('init called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies called');
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget called');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose called');
  }
}

