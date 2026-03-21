import 'package:flutter/material.dart';

class Listviewbuild extends StatelessWidget {
  const Listviewbuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview builder"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Item $index'),
          );
      })
      );
  }
}