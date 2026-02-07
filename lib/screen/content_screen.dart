import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Content Screen!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),ElevatedButton(onPressed: (){
            Navigator.pop(context, 
            MaterialPageRoute<void>(
              builder: (BuildContext context){
                return ContentScreen();
              }
            )); 
          }, child: Text("Go to Content Screen"))
        ]
          )));
  }
}