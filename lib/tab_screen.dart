import 'package:sept24batch7pm/list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Screen'),
          bottom: TabBar(
            isScrollable: true,
            physics: const ScrollPhysics(),
            indicatorColor: Colors.red,
            overlayColor: WidgetStateProperty.all(Colors.white),
            onTap: (int value) {
              print(value);
            },
            dividerColor: Colors.green,
            dividerHeight: 10,
            // indicator: BoxDecoration(
            //   color: Colors.pink.shade100,
            // ),
            enableFeedback: false, // For vibration
            splashBorderRadius: BorderRadius.circular(100),
            indicatorWeight: 20,
            labelColor: Colors.black,
            tabAlignment: TabAlignment.center,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),

                // child: Icon(Icons.star),
                text: "Hello",
              ),
              Tab(
                icon: Icon(Icons.search),
                child: Text('Search'),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text('Profile'),
              ),
              Tab(
                icon: Icon(Icons.home),

                // child: Icon(Icons.star),
                text: "Hello",
              ),
              Tab(
                icon: Icon(Icons.search),
                child: Text('Search'),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text('Profile'),
              ),
              Tab(
                icon: Icon(Icons.home),

                // child: Icon(Icons.star),
                text: "Hello",
              ),
              Tab(
                icon: Icon(Icons.search),
                child: Text('Search'),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text('Profile'),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text('Profile'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          // viewportFraction: 10,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            const ListScreen(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            const ListScreen(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            const ListScreen(),
          ],
        ),
      ),
    );
  }
}
