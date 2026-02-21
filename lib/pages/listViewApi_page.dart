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
  
  List<dynamic> users=[];

  void fetchUser()async{
    try{
      var res = await http.get(Uri.parse("https://dummyjson.com/users/"));
      var data=jsonDecode(res.body); // cast to json
      setState(() {
        users= data['users'];
      });

      print(users[0]);

    }catch(e){
      print('$e');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Listview APi"),
          ),
          body: Column(
            children: [
              ElevatedButton(onPressed:(){
                fetchUser();
              } , child:Text("Call Api")),
             
            ],
            
          )
    );
  }
}