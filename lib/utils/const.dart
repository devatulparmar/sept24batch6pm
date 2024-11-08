import 'package:flutter/material.dart';

const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
    width: 2,
  ),
);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.green,
    width: 2,
  ),
);

class MyValidators {
  static emailValidator(value) {
    if (value == null || value == '') {
      return "Enter an Email";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Enter a valid email';
    } else {
      return null;
    }
  }

  static passwordValidator(value) {
    if (value == null || value == '') {
      return "Enter a password";
    } else if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
      return "Should contain at least one upper case";
    } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(value)) {
      return "Should contain at least one lower case";
    } else if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
      return "Should contain at least one digit";
    } else if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value)) {
      return "Should contain at least one Special character";
    } else if (!RegExp(r'^.{6,}').hasMatch(value)) {
      return "Must be at least 6 characters in length ";
    } else {
      return null;
    }
  }
}

class MySnackBar {
  static showSnackBar(
      {required BuildContext context,
      required String content,
      Color? backGroundColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        backgroundColor: backGroundColor ?? Colors.black,
        duration: const Duration(seconds: 4),
        // showCloseIcon: true,
        // closeIconColor: Colors.red,
        action: SnackBarAction(
          onPressed: () {
            print('Hello');
          },
          label: "Click Here",
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
