import 'package:flutter/material.dart';

class Textbuttonpage extends StatelessWidget {
  const Textbuttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Textbutton"),),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.pushNamed(context, '/profileui');
        }, child: Text("go to  "),
      ),),
    );
  }
}