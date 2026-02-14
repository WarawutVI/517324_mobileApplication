import 'package:flutter/material.dart';

class Answer4 extends StatefulWidget {
  const Answer4({super.key});

  @override
  State<Answer4> createState() => _Answer4State();
}

class _Answer4State extends State<Answer4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.yellow[800],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "User Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.email, color: Colors.blue),
              SizedBox(width: 10),
              Text("user@example.com"),
            ],
          ),SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.phone, color: Colors.blue),
              SizedBox(width: 10),
              Text("123-456-7890"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.location_on, color: Colors.blue),
              SizedBox(width: 10),
              Text("123 Main Street"),
            ],
          ),
        ],
      ),
    );
  }
}
