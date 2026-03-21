import 'package:flutter/material.dart';

class Profileheader extends StatefulWidget {
  const Profileheader({super.key});

  @override
  State<Profileheader> createState() => _ProfileheaderState();
}

class _ProfileheaderState extends State<Profileheader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        CircleAvatar( radius: 40,),
        SizedBox(height: 10,),
        Text("sun")
      ],
    );
  }
}