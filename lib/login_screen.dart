import 'package:sept24batch7pm/home_screen.dart';
import 'package:sept24batch7pm/screen2.dart';
import 'package:sept24batch7pm/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as httpObject;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  late SharedPreferences _preferences;

  List<String> cityNameList = ['Vadodara', 'Ahmedabad', 'Surat'];

  void _initSharedPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future _loginAPI() async {
    var urlLink = Uri.parse('https://reqres.in/api/users?page=2');
    var response = await httpObject.get(urlLink);
    print(response.body);
  }

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.disabled,
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 40),
              IntlPhoneField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: enabledBorder,
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                  print(phone.countryCode);
                  print(phone.number);
                },
                validator: (value) {
                  if (value.toString().isEmpty || value == null) {
                    return 'Please enter a number';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: enabledBorder,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                onTapOutside: (PointerDownEvent event) {
                  emailFocusNode.unfocus();
                },
                validator: (String? value) =>
                    MyValidators.emailValidator(value),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isObscureText,
                focusNode: passwordFocusNode,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: enabledBorder,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
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
                onTapOutside: (PointerDownEvent event) {
                  passwordFocusNode.unfocus();
                },
                validator: (String? value) =>
                    MyValidators.passwordValidator(value),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () async {
                        _loginAPI();

                        // Navigator.pushNamed(context, 'screen2');

                        _preferences.setStringList('cityNameList', cityNameList);
                        _preferences.setBool(prefIsLogin, true);
                        _preferences.setDouble('doubleValue', 3.14);
                        _preferences.setInt('intValue', 3);
                        _preferences.setString('stringValue', 'Hello');

                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (Route r) => false);
                        // Navigator.pushNamed(
                        //   context,
                        //   routeScreen2,
                        //   arguments: {
                        //     "email": emailController.text,
                        //     "password": passwordController.text,
                        //   },
                        // );

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) => Screen2(
                        //       email: emailController.text,
                        //       password: passwordController.text,
                        //     ),
                        //   ),
                        // );

                        // print('Elevated button click');
                        // if (phoneController.text.isEmpty) {
                        //   MySnackBar.showSnackBar(
                        //     context: context,
                        //     content: 'Error',
                        //     backGroundColor: Colors.red,
                        //   );
                        // } else if (formKey.currentState!.validate() ||
                        //     formKey2.currentState!.validate()) {
                        //   MySnackBar.showSnackBar(
                        //     context: context,
                        //     content: 'Login Success',
                        //     backGroundColor: Colors.green,
                        //   );
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('forget password click');
                },
                child: const Text('Forget Password'),
              ),
              /*
             TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  focusColor: Colors.red,
                  fillColor: Colors.green,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  // suffixIcon: IconButton(
                  //   onPressed: () {
                  //     emailController.clear();
                  //   },
                  //   icon: const Icon(
                  //     Icons.clear,
                  //     color: Colors.red,
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                style: const TextStyle(fontSize: 16, color: Colors.red),
                textDirection: TextDirection.ltr,
                autocorrect: true,
                autofocus: true,
                cursorColor: Colors.red,
                cursorHeight: 20,
                cursorWidth: 10,
                cursorRadius: const Radius.circular(35),
                // showCursor: false,
                cursorOpacityAnimates: true,
                // maxLength: 10,
                // maxLines: 5,
                // minLines: 2,
                // readOnly: true,
                // textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.name,
                keyboardAppearance: Brightness.dark,
                obscureText: isObscureText,
                onChanged: (String value){
                  print(value);
                  setState(() {});
                },
                // obscuringCharacter: "*",
                // enabled: false,
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
                  hintStyle: const TextStyle(fontSize: 12, color: Colors.blue),
                  // label: const Icon(Icons.password),
                  labelStyle: const TextStyle(fontSize: 12, color: Colors.blue),
                  // enabled: false,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  helperText: "Here is Helper Text",
                  // icon: const Icon(Icons.password),
                  // iconColor: Colors.red,
                  // prefix shows only when focus
                  // prefix: const Icon(Icons.password),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  // prefixIconColor: Colors.red,
                  // prefixText: "Prefix Text",
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (isObscureText == true) {
                        isObscureText = false;
                      }
                      else {
                        isObscureText = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      isObscureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                      color: isObscureText ? Colors.grey : Colors.pink,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.orange.shade50,
                ),
              ),
              Text(passwordController.text),*/
            ],
          ),
        ),
      ),
    );
  }
}
