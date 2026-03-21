import 'package:flutter/material.dart';

class Greetingwidget extends StatelessWidget {
  const Greetingwidget({super.key, required this.name,required this.age});
  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("name : $name"),
      Text("age : $age")
    ],);
  }
}
