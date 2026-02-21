import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/models/listapi_data.dart';
import 'package:http/http.dart' as http;

class ListviewapiPage extends StatefulWidget {
  const ListviewapiPage({super.key});

  @override
  State<ListviewapiPage> createState() => _ListviewapiPageState();
}

class _ListviewapiPageState extends State<ListviewapiPage> {
  List<dynamic> users = [];
  List<Userlist> listUser=[];

  void initState(){
    super.initState();
    fetchUser();
  }
  void fetchUser() async {
    try {
      var res = await http.get(Uri.parse("https://dummyjson.com/users/"));
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body); // cast to jso

        setState(() {
          users = data['users'];
          listUser = users.map((item) => Userlist.fromJson(item)).toList();
         
        });
        print(users[0]);
      }
    } catch (e) {
      print('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview APi")),
      body: ListView.separated(
        itemCount: listUser.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("${index+1}"),
            title: Text("${listUser[index].firstName}"));
        },
      ),
      floatingActionButton: ElevatedButton(onPressed: (){
        fetchUser();
      }, child: Text("call api") ),
    );
  }
}
