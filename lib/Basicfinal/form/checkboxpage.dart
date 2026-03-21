import 'package:flutter/material.dart';

class Checkboxpage extends StatefulWidget {
  const Checkboxpage({super.key});

  @override
  State<Checkboxpage> createState() => _CheckboxpageState();
}

class _CheckboxpageState extends State<Checkboxpage> {
  @override
  bool _isChecked= false;bool _isChecked2= false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox"),),
      body: Column(
        children: [
          CheckboxListTile(value: _isChecked,
           title:  Text("Accept Term & Conditions"),
           onChanged: (value){
             setState(() {
                _isChecked=value!;
             });
           }),CheckboxListTile(value: _isChecked2,
           title:  Text("Accept Term & Conditions2"),
           onChanged: (value){
             setState(() {
                _isChecked2=value!;
             });
           })
        ],
      ),
    );
  }
}