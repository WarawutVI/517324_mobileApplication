import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/models/listapi_data.dart';
import 'package:http/http.dart' as http;

class ListviewapiPage2 extends StatefulWidget {
  const ListviewapiPage2({super.key});

  @override
  State<ListviewapiPage2> createState() => _ListviewapiPageState();
}

class _ListviewapiPageState extends State<ListviewapiPage2> {
  List<dynamic> users = [];
  List<Userlist> listuser=[];
   void initState() {
    // TODO: implement initState
    super.initState();
     fetchUser();
  }

  void fetchUser() async {
    try {
      setState(() {listuser = [];});
      var res = await http.get(Uri.parse("https://dummyjson.com/users/"));
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body); // cast to jso
        List<dynamic> jsonList = data['users'];
        setState(() {
          listuser = jsonList.map((item) => Userlist.fromJson(item)).toList();
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
        itemCount: listuser.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("${index+1}"),
            title: Text("${listuser[index].fullName}"));
        },
      ),
      floatingActionButton: ElevatedButton(onPressed: (){
        fetchUser();
      }, child: Text("call api") ),
    );
  }
}
