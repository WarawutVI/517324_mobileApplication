import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/models/user_data.dart';

class CallapiPage extends StatefulWidget {
  const CallapiPage({super.key});

  @override
  State<CallapiPage> createState() => _CallApiScreenState();
}

class _CallApiScreenState extends State<CallapiPage> {
  User? userData;
  void fetchUser() async {
    try {
      var response = await http.get(Uri.parse('https://dummyjson.com/users/1'));
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        User user = User.fromJson(data);
        setState(() {
          userData = user;
        });
        print('firstName: ${user.firstName}');
      } else {
        print('Failed to fetch data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Call API'),
        ),
        body: Center(
            child: Column(children: [
          Text('Name : ${userData?.firstName}'),
          ElevatedButton(
              onPressed: () {
                fetchUser();
              },
              child: Text('Call API'))
        ])));
  }
}
