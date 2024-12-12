import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sept24batch7pm/utils/const.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  final imagePickerObject = ImagePicker();
  int genderSelectedValue = 0;
  bool isObscureText = true;
  String? selectedCityName;
  String selectedDate = '';
  XFile? selectedImage;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  bool isTermsAndConditionAccepted = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _selectBirthDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(
        DateTime.now().year - 18,
        DateTime.now().month,
        DateTime.now().day,
      ),
    );
    selectedDate = DateFormat.yMd().format(date!);
    setState(() {});
  }

  void _selectImageFromGallery() async {
    selectedImage = await imagePickerObject.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _selectImageFromGallery();
                },
                child: selectedImage == null
                    ? const CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(imgImage2),
                      )
                    : CircleAvatar(
                        radius: 100,
                        backgroundImage: FileImage(
                          File(selectedImage!.path),
                        ),
                      ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                validator: (String? value) =>
                    MyValidators.emailValidator(value),
                decoration: InputDecoration(
                  hintText: "Enter an Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: isObscureText,
                validator: (String? value) =>
                    MyValidators.passwordValidator(value),
                decoration: InputDecoration(
                  hintText: "Enter a password",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (isObscureText == true) {
                        isObscureText = false;
                      } else {
                        isObscureText = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      isObscureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      color: isObscureText ? Colors.grey : Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == '') {
                    return "Please Enter a name";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter a full name",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              IntlPhoneField(
                controller: numberController,
                validator: (value) {
                  if (value == '') {
                    return "Please Enter a number";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter a number",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: RadioListTile(
                      value: 1,
                      groupValue: genderSelectedValue,
                      onChanged: (newValue) {
                        genderSelectedValue = newValue!;
                        setState(() {});
                      },
                      title: const Text('Male'),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: RadioListTile(
                      value: 2,
                      groupValue: genderSelectedValue,
                      onChanged: (newValue) {
                        genderSelectedValue = newValue!;
                        setState(() {});
                      },
                      title: const Text('Female'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: DropdownButton(
                  hint: const Text('Select City'),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      value: "Vadodara",
                      child: Text('Vadodara'),
                    ),
                    DropdownMenuItem(
                      value: "Ahmedabad",
                      child: Text('Ahmedabad'),
                    ),
                    DropdownMenuItem(
                      value: "Rajkot",
                      child: Text('Rajkot'),
                    ),
                  ],
                  value: selectedCityName,
                  underline: const SizedBox.shrink(),
                  borderRadius: BorderRadius.circular(35),
                  onChanged: (newValue) {
                    selectedCityName = newValue!;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text("Birthdate: $selectedDate"),
                  IconButton(
                    onPressed: _selectBirthDate,
                    icon: const Icon(
                      Icons.calendar_month,
                    ),
                  ),
                ],
              ),
              CheckboxListTile(
                value: isTermsAndConditionAccepted,
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Terms And Condition.'),
                onChanged: (newValue) {
                  isTermsAndConditionAccepted = newValue!;
                  setState(() {});
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (genderSelectedValue == 0) {
                      MySnackBar.showSnackBar(
                        context: context,
                        content: 'Please Select Gender',
                        backGroundColor: Colors.red,
                      );
                    } else if (selectedCityName == null) {
                      MySnackBar.showSnackBar(
                        context: context,
                        content: 'Please Select City',
                        backGroundColor: Colors.red,
                      );
                    } else if (selectedDate.isEmpty) {
                      MySnackBar.showSnackBar(
                        context: context,
                        content: 'Please Select Date',
                        backGroundColor: Colors.red,
                      );
                    } else if (selectedImage == null) {
                      MySnackBar.showSnackBar(
                        context: context,
                        content: 'Please Select Profile Image',
                        backGroundColor: Colors.red,
                      );
                    } else if (isTermsAndConditionAccepted == false) {
                      MySnackBar.showSnackBar(
                        context: context,
                        content: 'Please accept Terms And Condition.',
                        backGroundColor: Colors.red,
                      );
                    } else {
                      Navigator.pushNamed(
                        context,
                        routeRegisterDetailsScreen,
                        arguments: {
                          "selectedImage":
                              selectedImage != null ? selectedImage!.path : "",
                          "email": emailController.text,
                          "password": passwordController.text,
                          "name": nameController.text,
                          "number": numberController.text,
                          "gender":
                              genderSelectedValue == 1 ? "Male" : "Female",
                          "city": selectedCityName,
                          "birthdate": selectedDate,
                        },
                      );
                    }
                  }
                },
                child: const Text('Register Now'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
