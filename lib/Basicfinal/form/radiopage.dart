import 'package:flutter/material.dart';

class Radiopage extends StatefulWidget {
  const Radiopage({super.key});

  @override
  State<Radiopage> createState() => _RadiopageState();
}

class _RadiopageState extends State<Radiopage> {
  @override
  String? _gender="Female";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: _gender,
            onChanged: (value){
              setState(() {
                 _gender= value.toString();
              });
            },
            ),
            RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: _gender,
            onChanged: (value){
              setState(() {
                 _gender= value.toString();
              });
            },
            )
        ],
      ),
    );
  }
}