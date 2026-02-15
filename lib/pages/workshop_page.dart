import 'dart:ffi';

import 'package:my_app/pages/workshop_formInfo.dart';
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
  final TextEditingController _confirmPasswordController =TextEditingController();
  final TextEditingController _NamewordController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool _isObscurePass = true;
  bool _isObscureConfirmPass = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:  Center(
                child:Text("Registration Form", 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)) 
              ),
            ),
          
            Padding(padding:  EdgeInsets.all(20)
            ,child: Column(
              children: [
                 
            TextFormField(
              controller: _usernameController, // connect to text field
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                
                labelText: "Username",
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your username";
                }
              },
              
            ),SizedBox(height: 20),
            TextFormField(
              obscureText: _isObscurePass, //hide password
              controller: _passwordController,
              
              decoration: InputDecoration(
                // connect to text field
                border: const OutlineInputBorder(),
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(_isObscurePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscurePass = !_isObscurePass;
                    });
                  },
                ),
                
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your password";
                }
              },
              
            ),SizedBox(height: 20),
            TextFormField(
              obscureText: _isObscureConfirmPass, //hide password
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                // connect to text field
                border: const OutlineInputBorder(),
                labelText: "Confirm Password",
                suffixIcon: IconButton(
                  icon: Icon(_isObscureConfirmPass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscureConfirmPass = !_isObscureConfirmPass;
                    });
                  },
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your confirm password";
                } else if (value != _passwordController.text) {
                  return "Password does not match";
                }
              },
            ),
              ],
            ))
            ,
           
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    controller: _NamewordController,
                    decoration: const InputDecoration(labelText: "First Name"),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your first name";
                      }
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: const InputDecoration(labelText: "Last Name"),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your last name";
                      }
                    },
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            
            // TextButton(onPressed: () {
            //     if (_formKey.currentState!.validate()) {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute<void>(
            //           builder: (BuildContext context) {
            //             return WorkshopForminfo(
            //               username: _usernameController.text,
            //               password: _passwordController.text,
            //               name: _NamewordController.text,
            //               lastName: _lastNameController.text,
            //             );
            //           },
            //         ),
            //       );
            //     } else {
            //       setState(() {
            //         strInput = "Form is invalid";
            //       });
            //     }
            //   } , child: Text("Save", style: TextStyle(fontSize: 20))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return WorkshopForminfo(
                          username: _usernameController.text,
                          password: _passwordController.text,
                          name: _NamewordController.text,
                          lastName: _lastNameController.text,
                        );
                      },
                    ),
                  );
                } else {
                  setState(() {
                    strInput = "Form is invalid";
                  });
                }
              },
              child: Text("Save"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _usernameController.text = "test123";
                  _passwordController.text = "password";
                  _confirmPasswordController.text = "password";
                  _NamewordController.text = "John";
                  _lastNameController.text = "Doe";
                });
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
