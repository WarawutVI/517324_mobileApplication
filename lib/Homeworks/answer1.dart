import 'package:flutter/material.dart';

class Answer1 extends StatefulWidget {
  const Answer1({super.key});

  @override
  State<Answer1> createState() => _Answer1State();
}

class _Answer1State extends State<Answer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Layout'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              SizedBox(width: 20),
              Container(width: 100, height: 100, color: Colors.green),
              SizedBox(width: 20),
              Container(width: 100, height: 100, color: Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 100, height: 100, color: Colors.orange),
              SizedBox(width: 20),
              Container(width: 100, height: 100, color: Colors.purple),
              SizedBox(width: 20),
              Container(width: 100, height: 100, color: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}
