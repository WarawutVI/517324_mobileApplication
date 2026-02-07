import 'package:my_app/components/profile_card.dart';
import 'package:my_app/components/text_card.dart';
import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  final String name;
  final Color bgColor;
  final String imageUrl ;
  const GreetingScreen({super.key, required this.name, required this.bgColor, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: bgColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCard(
            text: "Good Afternoon",
            color: Colors.greenAccent,
          ),
          SizedBox(height: 10),
          ProfileCard(imageUrl: this.imageUrl,name: this.name,)
         
        ],
      )),
    );
  }
}