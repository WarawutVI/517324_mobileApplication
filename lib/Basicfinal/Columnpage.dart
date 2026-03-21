import 'package:flutter/material.dart';

class Columnpage extends StatelessWidget {
  const Columnpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Row page"),),
       body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.blue,),
        ],)),
    );
  }
}