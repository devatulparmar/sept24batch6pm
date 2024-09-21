import 'package:flutter/material.dart';

void main() {
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
          leadingWidth: 100,
          leading: const Text(
            "This is AppBar",
            style: TextStyle(
              color: Colors.white,
            ),
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
        body: Center(
          child: Text(
            'This is Body part',
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: (){

            },
            label: Text('This is FLoating Action Button'),
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
