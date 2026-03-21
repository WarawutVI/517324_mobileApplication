import 'package:flutter/material.dart';
import 'package:my_app/Basicfinal/animation/composition/profileheader.dart';
import 'package:my_app/Basicfinal/class/Greetingwidget.dart';
import 'package:my_app/widgets/profile_header.dart';

class Mainprofile extends StatefulWidget {
  const Mainprofile({super.key});

  @override
  State<Mainprofile> createState() => _MainprofileState();
}

class _MainprofileState extends State<Mainprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Profileheader(),
          Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
          Greetingwidget(name: "sun", age: 1)
        ],
      ),
    );
  }
}