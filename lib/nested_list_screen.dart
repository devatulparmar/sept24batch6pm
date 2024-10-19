
import 'package:flutter/material.dart';

class NestedListScreen extends StatefulWidget {
  const NestedListScreen({super.key});

  @override
  State<NestedListScreen> createState() => _NestedListScreenState();
}

class _NestedListScreenState extends State<NestedListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Grid Screen'),
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            Container(
              color: const Color(0XFF673ab7),
              height: 300,
              width: 500,
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 5,
              shrinkWrap: true,
              // scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue,
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text("Item $index"),
                  ),
                );
              },
            ),
            Container(
              color: Colors.blueAccent,
              height: 300,
              width: 500,
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GridView.builder(
                  itemCount: 15,
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.blueAccent,
                      height: 300,
                      width: 500,
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    );
                  },
                ),
                Container(
                  color: Colors.red,
                  height: 300,
                  width: 500,
                ),
                Container(
                  color: Colors.green,
                  height: 300,
                  width: 500,
                ),
                Container(
                  color: Colors.blue,
                  height: 300,
                  width: 500,
                ),
                Container(
                  color: Colors.pink,
                  height: 300,
                  width: 500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
