
import 'package:sept24batch7pm/login_screen.dart';
import 'package:sept24batch7pm/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Colors.blue),
        ),
      ),
      // home: const LoginScreen(),
      // routes: {
      //   '/': (BuildContext context) => LoginScreen(),
      //   routeScreen2: (BuildContext context) => Screen2(),
      // },
      onGenerateRoute: MyAppRoutes.onGenerate,
    );
  }
}
