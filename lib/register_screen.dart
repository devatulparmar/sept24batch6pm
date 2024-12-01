import 'package:sept24batch7pm/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscureText = true;
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  int selectedGender = 0;

  String selectedGenderText = 'Male';

  bool isCheckBoxChecked = false;

  String? dropDownSelectedCity;

  String selectedDate = '';

  String selectedTime = '';

  void _selectDateFromDatePicker() async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(
          DateTime.now().year - 18, DateTime.now().month, DateTime.now().day),
      initialEntryMode: DatePickerEntryMode.inputOnly
    );
    var formattedDate = DateFormat.EEEE().format(date!);
    var d = DateFormat('dd:MM/yyyy').format(date);
    selectedDate = formattedDate.toString();
    setState(() {});
  }

  void _selectTimeFromTimePicker() async {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      barrierDismissible: true,
      initialEntryMode: TimePickerEntryMode.dialOnly
      // hourLabelText: "hourLabelText",
      // builder: (context, child) => MediaQuery(
      //     data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
      //     child: child!,
      // ),
    );

    /// for 12HourFormat
    var formattedTime = time!.format(context).toString();
    print(formattedTime);

    /// for 24HourFormat
    selectedTime = "${time.hour}:${time.minute}";

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
              validator: (String? value) => MyValidators.emailValidator(value),
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
                Radio(
                  value: 0,
                  groupValue: selectedGender,
                  activeColor: Colors.red,
                  onChanged: (newValue) {
                    selectedGender = newValue!;
                    setState(() {});
                  },
                ),
                const Text('Male'),
                Radio(
                  value: 1,
                  groupValue: selectedGender,
                  activeColor: Colors.red,
                  onChanged: (newValue) {
                    selectedGender = newValue!;
                    setState(() {});
                  },
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Radio(
                  value: "Male",
                  groupValue: selectedGenderText,
                  activeColor: Colors.red,
                  onChanged: (newValue) {
                    selectedGenderText = newValue!;
                    setState(() {});
                  },
                ),
                const Text('Male'),
                Radio(
                  value: "Female",
                  groupValue: selectedGenderText,
                  activeColor: Colors.red,
                  onChanged: (newValue) {
                    selectedGenderText = newValue!;
                    print(selectedGenderText);
                    setState(() {});
                  },
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: RadioListTile(
                    value: "Male",
                    groupValue: selectedGenderText,
                    activeColor: Colors.red,
                    title: const Text('Male'),
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      selectedGenderText = newValue!;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: RadioListTile(
                    value: "Female",
                    groupValue: selectedGenderText,
                    activeColor: Colors.red,
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Female'),
                    onChanged: (newValue) {
                      selectedGenderText = newValue!;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButton(
              value: dropDownSelectedCity,
              items: [
                const DropdownMenuItem(
                  value: "Vadodara",
                  child: Text('Vadodara'),
                ),
                const DropdownMenuItem(
                  value: "Surat",
                  child: Text('Surat'),
                ),
                const DropdownMenuItem(
                  value: "Ahmedabad",
                  child: Text('Ahmedabad'),
                ),
              ],
              hint: const Text('Select City'),
              onChanged: (newValue) {
                dropDownSelectedCity = newValue!;
                setState(() {});
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: isCheckBoxChecked,
                  onChanged: (newValue) {
                    isCheckBoxChecked = newValue!;
                    setState(() {});
                  },
                ),
                const Text('Accept All Terms and Conditions.'),
              ],
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              value: isCheckBoxChecked,
              title: const Text('Accept All Terms and Conditions.'),
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.red,
              onChanged: (newValue) {
                isCheckBoxChecked = newValue!;
                setState(() {});
              },
            ),
            Row(
              children: [
                Text('BirthDate : $selectedDate'),
                IconButton(
                  onPressed: () {
                    _selectDateFromDatePicker();
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text('Time : $selectedTime'),
                IconButton(
                  onPressed: () {
                    _selectTimeFromTimePicker();
                  },
                  icon: const Icon(
                    Icons.timer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
