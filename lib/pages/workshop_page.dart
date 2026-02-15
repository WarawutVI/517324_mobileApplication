import 'package:flutter/material.dart';

class WorkshopPage extends StatefulWidget {
  const WorkshopPage({super.key});

  @override
  State<WorkshopPage> createState() => _WorkshopPageState();
}

class _WorkshopPageState extends State<WorkshopPage> {
  @override
  String strInput = "";

  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("display : $strInput"),
          TextFormField(
      
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            icon: Icon( Icons.person),
            labelText: "Username"),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Please enter your name";
            }
            return null;
          },
          onChanged: (String value) {
            setState(() {
              strInput = value;
            });
          },
        ),
        TextFormField(
          obscureText: true, //hide password
          decoration: const InputDecoration(
            icon: Icon( Icons.lock),
            labelText: "Password"),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            }
            return null;
          },
          onChanged: (String value) {
            setState(() {
              
            });
          },
        ),
        TextButton(onPressed:(){
          print("summit");
        }, child: Text("Submit"))
        ],
      )
    );;
  }
}