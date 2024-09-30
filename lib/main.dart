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
          child: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 10,
            runSpacing: 30,
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
                color: Colors.greenAccent,
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
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.black,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.repeated,),
                ),
                child: const Center(
                  child: Text('8'),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.greenAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.repeated,),
                ),
                child: const Center(
                  child: Text('9'),
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
      ),
    ),
  );
}
