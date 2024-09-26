import 'package:flutter/material.dart';

void main() {
  int count = 0;

  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
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
            const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
            const Icon(
              Icons.access_alarms_rounded,
              color: Colors.white,
              size: 20,
            ),
            const Text(
              "This is AppBar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Button clicked',
            ),
            Text(
              '$count times',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Hello'),
                const Text('World'),
              ],
            ),
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: const Text('Hello World'),
            ),
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: const Text('Hello World'),
            ),
          ],
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
      ),
    ),
  );
}
