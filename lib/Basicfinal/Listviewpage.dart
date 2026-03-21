import 'package:flutter/material.dart';

class Listviewpage extends StatelessWidget {
  const Listviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          color: Colors.grey,
          child: Text("Item1"),
        ),
         Container(
          height: 350,
          width: double.infinity,
          color: Colors.red,
          child: Text("Item2"),
        ),
         Container(
          height: 350,
          width: double.infinity,
          color: Colors.yellow,
          child: Text("Item2"),
        )
      ],
    );
  }
}