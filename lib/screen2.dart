import 'package:batch6pm/screen3.dart';
import 'package:batch6pm/utils/const.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  // final String email;
  // final String password;

  // const Screen2({super.key, required this.email, required this.password});

  dynamic arguments;
  Screen2({super.key, required this.arguments});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Column(
        children: [
          // Text('Email : ${widget.email}'),
          // Text('Password ${widget.password}'),
          Text('Email : ${widget.arguments['email']}'),
          Text('Password : ${widget.arguments['password']}'),

          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => Screen3(),
                //   ),
                // );

                Navigator.pushReplacementNamed(context, routeScreen3);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => Screen3(),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'Go to Screen 3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
