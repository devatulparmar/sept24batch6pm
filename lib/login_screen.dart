import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text('Email'),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusColor: Colors.red,
                fillColor: Colors.green,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              style: const TextStyle(fontSize: 16, color: Colors.red),
              textDirection: TextDirection.ltr,
              autocorrect: true,
              autofocus: true,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderSide: const BorderSide(
                //     color: Colors.blue,
                //     width: 2,
                //   ),
                //   borderRadius: BorderRadius.circular(35),
                // ),
                focusColor: Colors.red,

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                hintText: "Enter Password",
                labelText: "Enter Password",
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.blue
                ),
                // label: const Icon(Icons.password),
                labelStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.blue
                ),
                // enabled: false,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                helperText: "Here is Helper Text",
                // icon: const Icon(Icons.password),
                // iconColor: Colors.red,
                // prefix shows only when focus
                // prefix: const Icon(Icons.password),
                prefixIcon: const Icon(Icons.email, color: Colors.pink,),
                // prefixIconColor: Colors.red,
                // prefixText: "Prefix Text",
                suffixIcon: const Icon(Icons.password, color: Colors.pink,),
                filled: true,
                fillColor: Colors.orange.shade50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
