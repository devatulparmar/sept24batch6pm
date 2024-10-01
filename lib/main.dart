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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState(){
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        // backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 20,
        // leadingWidth: 100,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.yellow,
        ),
        title: const Text(
          "This is AppBar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            width: 10,
          ),
          const Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('1'),
              ),
            ),
            Container(
              color: Colors.orange,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('2'),
              ),
            ),
            Container(
              color: Colors.brown,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('3'),
              ),
            ),
            Container(
              color: Colors.pink,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('4'),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('5'),
              ),
            ),
            Container(
              color: Colors.purple,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('6'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.black,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated),
              ),
              child: const Center(
                child: Text('7'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('clicked');
        },
        label: const Text('This is FLoating Action Button'),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     print('clicked');
      //   },
      //   child: Icon(
      //     Icons.add,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
