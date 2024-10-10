import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint('build called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.orange,
                    height: 100,
                    width: 100,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.brown,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint('init called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
