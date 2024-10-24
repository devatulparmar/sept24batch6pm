import 'package:batch6pm/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

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
        child: Column(
          children: [
            const SizedBox(height: 40),
            TextField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                hintText: 'Email',
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
              ),
              onTapOutside: (PointerDownEvent event){
                emailFocusNode.unfocus();
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscureText,
              focusNode: passwordFocusNode,
              decoration: InputDecoration(
                hintText: 'Password',
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
              onTapOutside: (PointerDownEvent event){
                passwordFocusNode.unfocus();
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Elevated button click');
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
    );
  }
}
