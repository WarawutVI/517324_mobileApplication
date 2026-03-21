import 'package:flutter/material.dart';

class Textformfieldpage extends StatefulWidget {
  const Textformfieldpage({super.key});

  @override
  State<Textformfieldpage> createState() => _TextformfieldpageState();
}

class _TextformfieldpageState extends State<Textformfieldpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form text"),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:TextFormField(
            decoration: InputDecoration(labelText:"Name"),
            validator: (value){
              if(value ==null || value.isEmpty){
                return "Please enter your name";
              }
              return null;
            },
            onChanged: (value){
              print(value);
            },
          ) ),
          
        ],
      ),
    );
  }
}