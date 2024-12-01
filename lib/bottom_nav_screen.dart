
import 'package:sept24batch7pm/default_screen.dart';
import 'package:sept24batch7pm/list_screen.dart';
import 'package:sept24batch7pm/login_screen.dart';
import 'package:sept24batch7pm/register_screen.dart';
import 'package:sept24batch7pm/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBottomNavScreen extends StatefulWidget {
  const AppBottomNavScreen({super.key});

  @override
  State<AppBottomNavScreen> createState() => _AppBottomNavScreenState();
}

class _AppBottomNavScreenState extends State<AppBottomNavScreen> {

  int selectedIndexValue = 0;

  List widgetList = [
    const DefaultScreen(),
    const ListScreen(),
    const ListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:widgetList[selectedIndexValue],
      extendBody:selectedIndexValue == 1 ? true : false,
      bottomNavigationBar: Container(
        decoration: selectedIndexValue == 1 ? const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 100,
              blurStyle: BlurStyle.inner,
              color: Colors.blue
            )
          ]
        ) : null,
        child: NavigationBar(
          selectedIndex: selectedIndexValue,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.search), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
          ],
          onDestinationSelected: (int index){
            selectedIndexValue = index;
            setState(() {});
          },
          elevation: 35,
          backgroundColor: Colors.transparent,
          // indicatorColor: appColorBottomNavBar,
          // indicatorShape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(300)
          // ),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          // surfaceTintColor: Colors.red,
          // shadowColor: Colors.green,
          // overlayColor: WidgetStateProperty.all(Colors.pink),
          height: 50,
          animationDuration: const Duration(seconds: 3),
        ),
      ),
    );
  }
}
