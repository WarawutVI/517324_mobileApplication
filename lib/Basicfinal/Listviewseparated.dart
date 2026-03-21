import 'package:flutter/material.dart';

class Listviewseparated extends StatelessWidget {
  const Listviewseparated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Separated"),),
      body: ListView.separated(
        itemCount:15,
        itemBuilder:(context, index){
          return Text("Item $index");
        }, 
        separatorBuilder:(context, index){
          return const Divider();
        }),
    );
  }
}