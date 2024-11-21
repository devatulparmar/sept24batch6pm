import 'package:batch6pm/default_screen.dart';
import 'package:batch6pm/image_screen.dart';
import 'package:batch6pm/login_screen.dart';
import 'package:batch6pm/register_screen.dart';
import 'package:batch6pm/screen2.dart';
import 'package:batch6pm/screen3.dart';
import 'package:batch6pm/utils/const.dart';
import 'package:flutter/material.dart';

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
            builder: (BuildContext context) => DefaultScreen());
      case routeScreen2:
        return MaterialPageRoute(builder: (BuildContext context) => Screen2(arguments: settings.arguments,));
      case routeScreen3:
        return MaterialPageRoute(builder: (BuildContext context) => Screen3());
      case routeLoginScreen:
        return MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
      case routeRegisterScreen:
        return MaterialPageRoute(builder: (BuildContext context) => RegisterScreen());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('No route defined for ${settings.name}'),
                  SizedBox(height: 10),
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
