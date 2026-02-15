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
  String name = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("display : $strInput"),
            SizedBox(height: 20),
            Text("display : $name"),
            SizedBox(height: 20),
            TextFormField(
              controller: _usernameController, // connect to text field
              decoration: const InputDecoration(
                // border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                labelText: "Username",
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your name";
                }
              },
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
            ),
            TextFormField(
              obscureText: true, //hide password
              controller: _passwordController,
              decoration: const InputDecoration(
                // connect to text field
                icon: Icon(Icons.lock),
                labelText: "Password",
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your password";
                }
              },
              // onChanged: (String value) { // use checking real time
              //   // setState(() {});
              // },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    strInput = "password: ${_passwordController.text}";
                  });
                } else {
                  setState(() {
                    strInput = "Form is invalid";
                  });
                }
              },
              child: Text("Save"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
                setState(() {
                  strInput = "";
                  name = "";
                });
              },
              child: Text("clear"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _usernameController.text = "admin";
                _passwordController.text = "123456";
              },
              child: Text("Auto fill"),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
