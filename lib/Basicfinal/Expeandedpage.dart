import 'package:flutter/material.dart';

class Expeandedpage extends StatelessWidget {
  const Expeandedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Layout"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Expanded(
                child: Container(height: 100, color: Colors.yellow),
                flex: 1, // 1 part of total row space
              ),
              Expanded(
                child: Container(height: 100, color: Colors.purple),
                flex: 2,  //2 part of total row space
              ),
                  Expanded(
                child: Container(height: 100, color: Colors.orange),
                flex: 3,
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
