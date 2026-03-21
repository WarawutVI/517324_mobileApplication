import 'package:flutter/material.dart';

class Switchpage extends StatefulWidget {
  const Switchpage({super.key});

  @override
  State<Switchpage> createState() => _SwitchpageState();
}

class _SwitchpageState extends State<Switchpage> {
  @override
  bool _isSwitched = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"),),
      body: SwitchListTile(
        title: Text("Enable Notification"),
        value: _isSwitched,
         onChanged: (value){
          setState(() {
            _isSwitched =value;
          });
         }),
    );
  }
}