import 'package:flutter/material.dart';
import 'package:my_app/Basicfinal/class/Greetingwidget.dart';

class Statelesspage extends StatelessWidget {
  const Statelesspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Greetingwidget(name: "Sun",age: 13,);
  }
}