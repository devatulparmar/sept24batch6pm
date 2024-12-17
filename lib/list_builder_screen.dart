import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpObject;
import 'package:sept24batch7pm/model/user_model.dart';

class ListBuilderScreen extends StatefulWidget {
  const ListBuilderScreen({super.key});

  @override
  State<ListBuilderScreen> createState() => _ListBuilderScreenState();
}

class _ListBuilderScreenState extends State<ListBuilderScreen> {
  List<UserData> userList = [];
  List tempList = [];
  String token = '';

  Future _getUserData() async {
    var url = Uri.parse('https://reqres.in/api/users?page=2');

    var response = await httpObject.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json'
      },
    );

    if (response.statusCode == 200) {
      var decodedJsonData = jsonDecode(response.body);
      print(decodedJsonData['total_pages']);
      tempList = decodedJsonData['data'] as List;
      ///for method
      // for(int index = 0; index < tempList.length; index++){
      //   var item = UserData.fromJson(tempList[index]);
      //   userList.add(item);
      // }
      ///for each method
      // for(var item in tempList){
      //   userList.add(item);
      // }
      ///map() function
      userList = tempList.map((item) => UserData.fromJson(item)).toList();
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Builder Screen'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      userList[index].avatar.toString(),
                    ),
                  ),
                  Row(
                    children: [
                      Text("User ID ${userList[index].id}"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("User First Name ${userList[index].firstName}"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("User Last Name: ${tempList[index]['last_name']}"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
