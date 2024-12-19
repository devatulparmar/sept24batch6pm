import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sept24batch7pm/model/EmployeeModel.dart';
import 'package:sept24batch7pm/repository/api_repository.dart';
import 'package:sept24batch7pm/utils/const.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  List<EmployeeData> employeeList = [];
  List tempList = [];

  void _getEmployeeList() async {
    // var url = Uri.parse("https://reqres.in/api/users?page=2");
    // Response response = await httpObject.post(url, headers: {});
    var response = await ApiRepository().getAPICall("https://reqres.in/api/users?page=2");

    if (response.statusCode == httpOkStatusCode) {
      var jsonData = jsonDecode(response.body);
      tempList = jsonData['data'];
      employeeList = tempList.map((dynamic item) => EmployeeData.fromJson(item)).toList();
      setState(() {});
    } else if (response.statusCode == httpInternalServerErrorStatusCode) {
      print("API developer's fault");
    }
  }

  @override
  void initState() {
    super.initState();
    _getEmployeeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(employeeList[index].avatar.toString()),
                ),
                Text("Id : ${employeeList[index].id.toString()}"),
                Text("Email : ${employeeList[index].email}"),
                Text("First Name : ${employeeList[index].firstName}"),
                Text("Last Name : ${employeeList[index].lastName}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
