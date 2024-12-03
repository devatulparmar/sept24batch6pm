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


  UserData _getUserDataFunction(dynamic element){
    return UserData.fromJson(element);
  }

  Future _getUserData() async {
    var response = await httpObject.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      var decodedJsonData = jsonDecode(response.body);
      tempList = decodedJsonData['data'] as List;
      userList = tempList.map(_getUserDataFunction).toList();
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
        title: const Text('List Screen'),
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
