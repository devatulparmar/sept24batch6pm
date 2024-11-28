import 'package:batch6pm/utils/colors.dart';
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
      appBar: AppBar(
        backgroundColor: appColorAppBar,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Dialog Screen'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeDialogScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Image Picker'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeImagePickerScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Register'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeRegisterScreen);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            tileColor: Colors.blueAccent,
            title: const Text('Login'),
            textColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 5),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, routeLoginScreen);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
