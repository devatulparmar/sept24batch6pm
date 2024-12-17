import 'package:sept24batch7pm/bottom_nav_screen.dart';
import 'package:sept24batch7pm/default_screen.dart';
import 'package:sept24batch7pm/dialog_screen.dart';
import 'package:sept24batch7pm/employee_list.dart';
import 'package:sept24batch7pm/image_picker_screen.dart';
import 'package:sept24batch7pm/image_screen.dart';
import 'package:sept24batch7pm/list_builder_screen.dart';
import 'package:sept24batch7pm/login_screen.dart';
import 'package:sept24batch7pm/register_details_screen.dart';
import 'package:sept24batch7pm/register_screen.dart';
import 'package:sept24batch7pm/screen2.dart';
import 'package:sept24batch7pm/screen3.dart';
import 'package:sept24batch7pm/tab_screen.dart';
import 'package:sept24batch7pm/utils/const.dart';
import 'package:flutter/material.dart';

import '../register_screen2.dart';

class MyAppRoutes {
  static Route onGenerate(RouteSettings settings) {
    // if(settings.name == routeScreen2){
    //   return MaterialPageRoute(builder: (BuildContext context) => Screen2());
    // } else {
    //   return MaterialPageRoute(
    //     builder: (_) => Scaffold(
    //       body: Center(child: Text('No route defined for ${settings.name}')),
    //     ),
    //   );
    // }

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (BuildContext context) => const AppBottomNavScreen(),
        );
      case routeScreen2:
        return MaterialPageRoute(
            builder: (BuildContext context) => Screen2(
                  arguments: settings.arguments,
                ));
      case routeScreen3:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Screen3());
      case routeLoginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case routeRegisterScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterScreen());
      case routeRegisterDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterDetailsScreen(arguments: settings.arguments),
        );
      case routeRegisterScreen2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterScreen2());
        case routeEmployeeListScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const EmployeeListScreen());
      case routeImagePickerScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ImagePickerScreen());
      case routeDialogScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DialogScreen());
      case routeTabScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TabScreen());
      case routeListBuilderScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ListBuilderScreen());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('No route defined for ${settings.name}'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'Go Back',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }
}
