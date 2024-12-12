
import 'dart:io';

import 'package:flutter/material.dart';

class RegisterDetailsScreen extends StatefulWidget {
  const RegisterDetailsScreen({super.key, required this.arguments});

  final dynamic arguments;

  @override
  State<RegisterDetailsScreen> createState() => _RegisterDetailsScreenState();
}

class _RegisterDetailsScreenState extends State<RegisterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Details Screen'),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: FileImage(
              File(widget.arguments['selectedImage']),
            ),
          ),
          const SizedBox(height: 20),
          Text(widget.arguments['email']),
          Text(widget.arguments['password']),
          Text(widget.arguments['name']),
          Text(widget.arguments['number']),
          Text(widget.arguments['gender']),
          Text(widget.arguments['city']),
          Text(widget.arguments['birthdate']),
        ],
      ),
    );
  }
}
