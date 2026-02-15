import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
void main() {

 fetchData() async {
  try{
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      print('Name: ${data['name']}');
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
  }

  fetchData();
  
}



