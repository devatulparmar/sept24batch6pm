import 'package:batch6pm/utils/const.dart';
import 'package:flutter/material.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: Text('Register'),
            textColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeRegisterScreen);
            },
          ),
          SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: Text('Login'),
            textColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeLoginScreen);
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
