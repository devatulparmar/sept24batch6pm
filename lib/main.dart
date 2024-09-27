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
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                height: 100,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.orange,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.greenAccent,
                      height: 150,
                      width: 100,
                    ),
                    Container(
                      color: Colors.pink,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.cyanAccent,
                      height: 150,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blueAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
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
      ),
    ),
  );
}
