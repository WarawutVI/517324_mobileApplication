import 'package:flutter/material.dart';
import 'package:my_app/Basicfinal/Positionedpage.dart';

class Elevatedbuttonpage extends StatelessWidget {
  const Elevatedbuttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ElevatedButton"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/profileui');
        }, child: Text("go to ")),
      ),
    );
  }
}