import 'dart:ffi';

import 'package:flutter/material.dart';

class WorkshopPage extends StatefulWidget {
  const WorkshopPage({super.key});

  @override
  State<WorkshopPage> createState() => _WorkshopPageState();
}

class _WorkshopPageState extends State<WorkshopPage> {
  @override
  String strInput = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            icon: Icon( Icons.person),
            labelText: "Username"),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Please enter your name";
            }
          
          },
          onChanged: (String value) {
            setState(() {
              // strInput = value;
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
          
          },
          onChanged: (String value) {
            setState(() {
              
            });
          },
        ),SizedBox(height: 20,) ,
        ElevatedButton(onPressed: (){
          if(_formKey.currentState!.validate()){
            setState(() {
              strInput ="Form is valid";
            });
          }else{
            setState(() {
              strInput = "Form is invalid";
            });
          }
        }, child:Text("Save"))
        ],
      ))
    );;
  }
}