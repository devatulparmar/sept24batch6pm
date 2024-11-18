import 'package:flutter/material.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({super.key});

  @override
  State<SalesScreen> createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        title: Text('Sales'),
        centerTitle: true,
        actions: [
          Icon(
            Icons.calendar_month,
            color: Colors.white,
          ),
          SizedBox(width: 5),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Text(
                        'Today',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Previous',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Text(
                        '18/11/2024',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '18/11/2024',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lang',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Orders',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///Listview build
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              separatorBuilder: (_, __) => Container(
                height: 1,
                color: Colors.grey,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "images/image2.jpeg",
                            ),
                          ),
                          SizedBox(width: 5),
                          Text('IN'),
                        ],
                      ),
                      SizedBox(width: 10),
                      Row(
                        children: [
                          Text('21'),
                          SizedBox(width: 70),
                          Text('15'),
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        children: [
                          Text('21'),
                          SizedBox(width: 80),
                          Text('15'),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          /// Total Row
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Total'),
                    ],
                  ),
                  SizedBox(width: 25),
                  Row(
                    children: [
                      Text('21'),
                      SizedBox(width: 70),
                      Text('15'),
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Text('21'),
                      SizedBox(width: 80),
                      Text('15'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.blue.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monthly Target'),
                        Text('23M'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.yellow.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yearly Target'),
                        Text('23B'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.blue.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monthly Target'),
                        Text('23M'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.yellow.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yearly Target'),
                        Text('23B'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.blue.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monthly Target'),
                        Text('23M'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.yellow.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yearly Target'),
                        Text('23B'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.blue.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monthly Target'),
                        Text('23M'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    color: Colors.yellow.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Yearly Target'),
                        Text('23B'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
