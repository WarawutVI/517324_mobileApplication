import 'package:flutter/material.dart';

class Rowpage extends StatelessWidget {
  const Rowpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Row page"),),
       body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.blue,),
        ],)),
    );
  }
}